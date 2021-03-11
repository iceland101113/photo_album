# Origami Works Display Website

> This project is a Rails Web Application, and it aims to show the origami works which I recently made. Visitors could click on all the origami work to see big-size photos, and they also could add like to their favorite works. If visitors have any comments or questions, they could contact me through the contact form, once they submit message info, it would send an email to the website manager(me). This website also has an admin management page which is for admin users to manage all the origami photos. After the admin user login management page, they could upload, edit and delete origami photos. This web application is deployed on Heroku and using AWS S3 to store origami photo files. For the mail server, this website use AWS SES service. Redis and sidekiq are used to schedule the mail jobs.

#### Live Link
[Huei's Origami Website](https://huei-origami.herokuapp.com/)

#### Getting Started
* Set Up
``` bash
# clone project
git clone https://github.com/iceland101113/photo_album.git

# Install dependencies
bundle install

# Create database schema
rails db:migrate

# Create .env file and Set keys(Should access your own keys on AWS service)
cp .env.example .env
```
* Usage
``` bash
# Start Server
rails s -p 3000

# Start Redis
redis-server

# Start Sidekiq
bundle exec sidekiq
```

#### Version
* Ruby 2.6.3
* Rails 5.1.4
* 

---
This project was generated with [rails](https://github.com/rails/rails)
Documentation about Using Rails Instruction can be found [here](https://guides.rubyonrails.org/).
