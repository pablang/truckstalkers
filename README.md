# Truckstalkers WIP

Truckstalkers is a web app that allows users to search for nearby or favourite foodtrucks.

https://truckstalkers.com

## Installation

This project is a ruby on rails application.

To open the project run the follwoing in the command line:

`bundle install`

Open files in your ide

To start the local server type the following in the command line:

`rails server`

## Technology used

- Ruby v2.6.3
- Rails v5.2.3 - framework
- postgreSQL - database
- bcrypt - password encryption
- JQuery / AJAX
- Google Maps API
- Geocoder gem - for location lat and long
- Kaminari - used for pagination
- Acts-As-Taggable-On gem - used for creating tags
- friendly_id gem - used for creating friendly url slugs
- Jira - for issue tracking

## Features

- Filter truck by category
- Browse through trucks useing paginated pages
- Currently anonymous review form accepts a name, review and rating
- Form is submitted through AJAX and renders newly submitted form at the top of list without page refresh
- Current location of truck shown on each truck page

## Still to do

- Add user favourites
- Add menus to each truck
- Create admin user
- Create users table
- Add map on homepage with truck locations for that area
