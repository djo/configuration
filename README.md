# Configuration Management

Development:

    bundle install
    bundle exec rake db:setup
    bundle exec rspec
    bundle exec rails server
    # => Browse to http://localhost:3000

## Acceptance tests

These scenarios can help you to verify the application.

### Add a new setting

* Click the "Add a new setting" link
* You should see a new form
* Try to submit the form
* You should see the error messages next to required fields
* Fill in the fields and submit again
* You should see the newly setting item in the list

### Edit a setting

* Move you cursor to a setting item
* You should see the "Edit" link
* Click the link
* You should see the form of the item
* Try to change the fields and submit the form
* You should see the just updated setting item

### Delete a setting

* Move you cursor to a setting item
* You should see the "Delete" link
* Click the link
* The setting item will be deleted
