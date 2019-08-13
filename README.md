# Micro-Reddit

This is an app which represents a simple version of reddit.com, a link aggregation website and forum, where users can posts links (e.g. to news articles) and other users can comment on these links).

This app is a practice app in order to understand models in Ruby on Rails. This app is part of [the Odin Project](https://www.theodinproject.com/lessons/building-with-active-record-ruby-on-rails) curriculum to learn full stack webdevelopment. 

Furthermore basic unit tests are written for validations.

### Data model

In this app users can create links (e.g. "posts"). The user and/or other users can comment on these links. Comment on comments are not possible in this version. Therefore the data model looks like this:

### Users
- username: string [unique, present] 
- email: string [unique, present]
- password: string [6-16 characters, present]

- has_many links
- has_many comments

### Links
- title: string [present]
- body: string [present]

- belongs_to user
- has_many comments 

### Comments 
- body: string [present]

- belongs_to link
