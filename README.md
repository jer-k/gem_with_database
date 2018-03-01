# GemWithDatabase

The easiest way to get started is to run `bin/setup` and then `bin/console`,
but that really obfuscates the purpose of the gem which is adding rake tasks
associated with using `ActiveRecord`.

`rake db:create db:migrate db:seed db:destroy db:setup db:reset` are
all available within this gem, as well as `exe/rails g migration`. 

The gem is meant to demonstrate how to add `ActiveRecord` and all the associated
tasks needed to use and develop code with `ActiveRecord` into a non Rails environment.

A blog post detailing the steps to set up the gem can be found 
[here](https://jer-k.github.io/add-active-record-rake-tasks-to-gem/).
A blog post detailing the process I used to understand how to create a `Rails::Engine` to provide the `rails g migration` functionality to a gem can be found [here](https://jer-k.github.io/adding-rails-g-migration-to-a-gem/)
