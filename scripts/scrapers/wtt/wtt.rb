# Use:
# 1. Download each truck with "download" parameter
# 2. Parse and import all trucks running with rails runner and with "parse" parameter

require 'byebug'
require 'httparty'
require 'nokogiri'
require 'fileutils'

BASE_URL = 'https://wherethetruck.at/trucks/?upage='

# Go through every page and download all trucks
def download_trucks
  (1..24).each do |page|
    p "Page #{page}"
    url = BASE_URL + page.to_s
    response = HTTParty.get(url)
    html_doc = Nokogiri::HTML(response.body)
    links = html_doc.xpath('//*[@id="members-list"]/li/div[1]/a/@href')
    links.each do |link|
      truck_name = link.value.split('/').last
      p "#{link.value} > #{truck_name}"
      File.open( "scripts/scrapers/wtt/trucks/#{truck_name}.html", "w") do |truck|
        truck << HTTParty.get(link.value)
      end
    end
  end
end

def parse_trucks
  Dir.glob('scripts/scrapers/wtt/trucks/*.html') do |truck_file|
    # p truck_file
    parse_truck truck_file
  end
end

def parse_truck truck_file
  truck = Truck.new
  doc = File.open(truck_file) { |f| Nokogiri::HTML(f) }
  truck.name = doc.xpath('//*[@id="item-header-content"]/h2/a').text
  avatar = doc.xpath('//*[@id="item-header-avatar"]/a/img/@src').first.value
  banner = doc.xpath('//*[@id="item-header-cover"]/img/@src').first.value
  truck.base_city = doc.xpath('//*[@id="item-body"]/div[1]/div').children[2].text.gsub("Home Town: ", "")
  truck.bio = doc.xpath('//*[@id="item-body"]/div[1]/div').children[3].text

  contact_links = doc.xpath('//*[@id="wtta_getintouchwith_widget-2"]//a/@href')
  contact_links.each do |link|
    if link.value.include? 'mailto:'
      truck.email = link.value.gsub('mailto:', '')
    elsif link.value.include? 'tel:'
      truck.phone = link.value.gsub('tel:', '')
    elsif link.value.include? 'acebook.com'
      truck.facebook = link.value
    else
      truck.website = link.value
    end
  end
  # Check every link to find instagram and twitter
  links = doc.xpath('//a/@href')
  links.each do |link|
    if link.value.include? 'acebook.com'
      truck.facebook = link.value
    elsif link.value.include? 'twitter'
      truck.twitter = link.value.gsub(/.*twitter.com\//,'')
    elsif link.value.include? 'instagram' and !link.value.include? '/p/'
      truck.instagram = link.value.gsub(/.*instagram.com\//,'').gsub(/\//,'')
    end
  end
  truck.save
  # truck.id = Truck.find_by(name: truck.name).id
  default_banner = "https://wherethetruck.at/images/default-banner.png"
  unless File.directory?("scripts/scrapers/wtt/images/#{truck.id}")
    FileUtils.mkdir_p("scripts/scrapers/wtt/images/#{truck.id}")
  end

  if avatar && avatar.start_with?("http")
    avatar_ext = File.extname(avatar)
    File.open( "scripts/scrapers/wtt/images/#{truck.id}/avatar#{avatar_ext}", "wb") do |avatar_img|
      avatar_img << HTTParty.get(avatar)
      photo = Photo.new
      photo.truck_id = truck.id
      photo.path = File.basename(avatar_img)
      photo.is_logo = photo.path.include?('avatar') ? true : false
      photo.save
      # byebug
    end
  end

  if banner && banner.start_with?("http") && banner != default_banner
    banner_ext = File.extname(banner)
    File.open( "scripts/scrapers/wtt/images/#{truck.id}/banner#{banner_ext}", "wb") do |banner_img|
      banner_img << HTTParty.get(banner)
      photo = Photo.new
      photo.truck_id = truck.id
      photo.path = File.basename(banner_img)
      photo.save
    end
  end
  p truck.name
end

if ARGV.length < 1
  puts "What do you want to do? Download trucks? Parse trucks?"
  exit
elsif ARGV[0] == 'download'
  download_trucks
elsif ARGV[0] == 'parse'
  if(ARGV[1])
    parse_truck ARGV[1]
    exit
  end
  parse_trucks
else
  puts "Undefined argument"
  exit
end