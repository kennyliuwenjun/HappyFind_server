# HappyFind Server
##### Supporting Server for HappyFind

## What does it do?
This server hosts data and API endpoints for finding suppliers of various services in a given area.

<<<<<<< HEAD
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

=======
## Specs
Code Versions:
* Ruby 2.5.1
* Rails 5.2.0
* Postgres 10.4


## Setup and Installation

### Pre-requisites
Happy Find server uses a postgres database, so ensure you have postgres 10.4 or later and an internet connection.

>>>>>>> a2b5fb20df99e53a7f157dc74f2c34b0c1dad5af
1. Clone the repository
2. run `bundle install`
3. run `rails db:create && rails db:migrate && rails db:seed` (note, seeding will take some time due to geolocation)
4. ...profit!
<<<<<<< HEAD
=======

* Services (job queues, cache servers, search engines, etc.)
>>>>>>> a2b5fb20df99e53a7f157dc74f2c34b0c1dad5af

* Deployment instructions
For command-line deployment to heroku, simply:
1. `heroku create`
2. `git push heroku master`