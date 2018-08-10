# HappyFind Server
##### Supporting Server for HappyFind

## What does it do?
This server hosts data and API endpoints for finding suppliers of various services in a given area.

### Happy Find front end
https://github.com/Lucasp22/happy_find_client

## Specs
Code Versions:
* Ruby 2.5.1
* Rails 5.2.0
* Postgres 10.4


## Setup and Installation

### Pre-requisites
Happy Find server uses a postgres database, so ensure you have postgres 10.4 or later and an internet connection.

1. Clone the repository
2. run `bundle install`
3. run `rails db:create && rails db:migrate && rails db:seed` (note, seeding will take some time due to geolocation)
4. ...profit!

* Deployment instructions
For command-line deployment to heroku, simply:
1. `heroku create`
2. `heroku config:set MAILGUN_KEY={YOUR KEY HERE}`
2. `heroku config:set MAILGUN_DOMAIN={YOUR MAILGUN DOMAIN HERE}`
2. `git push heroku master`