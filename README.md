# Saidit - A Reddit Clone
  * Functioning reddit clone. You can sign up, log in,
     create links and comments and vote.

* Ruby version 2.2.0

## Do the following to use this program

* Fork this repo.
* Clone this repo.
* `bundle install` to install all gems required.
* `rake db:migrate` to run the migration and update the database.
* `rake db:seed` to populate your db with 50 randomly generated todos(via <a href="https://rubygems.org/gems/faker/versions/1.4.3">faker</a>).
* `rails s` to start your local server.

## File Structure
```
.
├── Gemfile
├── Gemfile.lock
├── Procfile
├── README.md
├── Rakefile
├── app
│   ├── assets
│   │   ├── images
│   │   ├── javascripts
│   │   │   ├── application.js
│   │   │   ├── boards.coffee
│   │   │   ├── comments.coffee
│   │   │   ├── links.coffee
│   │   │   ├── sessions.coffee
│   │   │   ├── users.coffee
│   │   │   └── votes.coffee
│   │   └── stylesheets
│   │       ├── application.scss
│   │       ├── boards.scss
│   │       ├── comments.scss
│   │       ├── links.scss
│   │       ├── sessions.scss
│   │       ├── users.scss
│   │       └── votes.scss
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── boards_controller.rb
│   │   ├── comments_controller.rb
│   │   ├── concerns
│   │   ├── links_controller.rb
│   │   ├── sessions_controller.rb
│   │   ├── users_controller.rb
│   │   └── votes_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   ├── boards_helper.rb
│   │   ├── comments_helper.rb
│   │   ├── links_helper.rb
│   │   ├── sessions_helper.rb
│   │   ├── users_helper.rb
│   │   └── votes_helper.rb
│   ├── mailers
│   ├── models
│   │   ├── board.rb
│   │   ├── comment.rb
│   │   ├── concerns
│   │   ├── link.rb
│   │   ├── user.rb
│   │   └── vote.rb
│   └── views
│       ├── boards
│       │   ├── _board.html.erb
│       │   ├── destroy.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   └── show.html.erb
│       ├── comments
│       │   ├── destroy.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   └── show.html.erb
│       ├── layouts
│       │   ├── _login.html.erb
│       │   └── application.html.erb
│       ├── links
│       │   ├── _comment.html.erb
│       │   ├── _link.html.erb
│       │   ├── destroy.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   └── show.html.erb
│       ├── sessions
│       │   └── new.html.erb
│       ├── users
│       │   ├── _login.html.erb
│       │   ├── _signup.html.erb
│       │   ├── _user.html.erb
│       │   ├── destroy.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   ├── show.html.erb
│       │   └── show_links.html.erb
│       └── votes
│           ├── destroy.html.erb
│           ├── edit.html.erb
│           ├── index.html.erb
│           ├── new.html.erb
│           └── show.html.erb
├── bin
│   ├── bundle
│   ├── rails
│   ├── rake
│   ├── setup
│   └── spring
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── initializers
│   │   ├── assets.rb
│   │   ├── backtrace_silencers.rb
│   │   ├── cookies_serializer.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   ├── mime_types.rb
│   │   ├── session_store.rb
│   │   └── wrap_parameters.rb
│   ├── locales
│   │   └── en.yml
│   ├── routes.rb
│   └── secrets.yml
├── config.ru
├── db
│   ├── migrate
│   │   ├── 20150611185840_create_users.rb
│   │   ├── 20150611192610_create_boards.rb
│   │   ├── 20150611192615_create_links.rb
│   │   ├── 20150611192744_create_comments.rb
│   │   ├── 20150611192855_create_votes.rb
│   │   ├── 20150613204633_add_upvote_column_to_votes.rb
│   │   ├── 20150613204710_add_downvote_column_to_votes.rb
│   │   ├── 20150614165506_add_default_value_to_upvote.rb
│   │   └── 20150614165727_add_default_value_to_downvote.rb
│   ├── schema.rb
│   └── seeds.rb
├── lib
│   ├── assets
│   └── tasks
├── log
│   └── development.log
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── favicon.ico
│   └── robots.txt
├── test
    ├── controllers
    │   ├── boards_controller_test.rb
    │   ├── comments_controller_test.rb
    │   ├── links_controller_test.rb
    │   ├── sessions_controller_test.rb
    │   ├── users_controller_test.rb
    │   └── votes_controller_test.rb
    ├── fixtures
    │   ├── boards.yml
    │   ├── comments.yml
    │   ├── links.yml
    │   ├── users.yml
    │   └── votes.yml
    ├── helpers
    ├── integration
    ├── mailers
    ├── models
    │   ├── board_test.rb
    │   ├── comment_test.rb
    │   ├── link_test.rb
    │   ├── user_test.rb
    │   └── vote_test.rb
    └── test_helper.rb
```
