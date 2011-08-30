## Welcome to Railslist

Railslist has been developed in Ruby on Rails, hence the name. It uses MySQL database. It runs out of the box with very little configuration. It comes with a very clean and simple interface like Craigslist™. Using Railslist does not require extensive technical expertise. An average internet user will be at ease setting up Railslist. It's Open Source, that means it is 100% free. Railslist can be used on unlimited domains / websites without any license restrictions. Try it now. You would love it.

## Railslist Features

* Open Source, 100% Free & SEO Enabled.
* Customizable Titles, Keywords, Descriptions & even URLs.
* 99% Text Based - Extremely Faster, Superb Performance.
* Powerful Search - by City, by Category, by Subcategory.
* Image Upload & Email Verification.
* Easy Setup and Installation.
* Simple, Clean and Easy to use interface.
* Unlimited Categories, Subcategories & Cities.
* No registration / No Signup to post ads.
* Stripped down and simplified Admin Interface
* Issues running railslist?. You are not alone. Ask in our forum


## Setup & Installation

Railslist can be installed either on a Webserver or locally (Desktop). Irrespective where you install, it is assumed that the target system is already installed with Ruby, Rails, MySQL and ImageMagick/RMagick (used for captcha). Go for Phusion Passenger, if you have a dedicated or semi-dedicated hosting. Passenger offers faster performance.

## Prerequisites
Ruby 1.8.7, Rails 2.3.12, RMagick/ImageMagick and MySQL / SQLite

## Installing Locally / Desktop Installation

* Clone Railslist to your local machine
* execute >rake db:setup
* Amend \railslist\config\initializers\siteconfig.rb - set SITENAME = "railslist.com" & SITEURL = "http://localhost:3000".

Thats it!. Change to Railslist Directory, Start Railslist -- ruby script/server.
Open your browser and visit http://localhost:3000.

## Logging in as Administrator
Goto: www.yourdomain/user and use default password: railslist
You must change default admin password at application.rb