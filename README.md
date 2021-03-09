# Origami Works Display Website

> An Rails Web Application. This website is aim to show the origami works which I recently made. Visitors could click on all the origami work photo to see big size photo, and they also could add like to their favorite works. If visitors have any comment or question, they could contact me through the contact form, once they submit message info, it would send an email to website manager(me). This website also have a admin management page which is for admin user to manage all the origami photo. After login management page, admin user could upload, edit and delete origami photos. This web appication is deploy on Heroku, and using AWS S3 to store origami photo file. For mail server, this website use AWS SES service. Redis and sidekiq is used to schedule the mail jobs.

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
