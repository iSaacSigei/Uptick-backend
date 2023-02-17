# NOTES API

This is an example Rails application that includes the following routes:


## Notes

The `notes` resource includes standard RESTful routes for managing notes. The Notes routes have all the `CRUD` operations(`CREATE, READ, UPDATE, and DELETE`)

## Users

The `users` resource includes a single route for showing a user's profile, and the notes beloging to the user

## Authentication

The application supports user authentication with the following routes:

- `POST /signup`: creates a new user account
- `POST /login`: logs in a user
- `DELETE /logout`: logs out a user

## Getting Started

To get started with this application, you'll need to install the necessary dependencies and run the development server. Here are the steps to follow:

1. Install Ruby on your machine, if you haven't already.
2. Clone this repository and cd into the project directory.
3. Run `bundle install` to install the necessary dependencies.
4. Run `rails db:migrate` to set up the database.
5. Run `rails server` to start the development server.

You should now be able to access the application at http://localhost:3000. From there, you can use the routes listed above to manage notes and perform user authentication.

## NB
To post a note, authorization is required-: the user should first login. 

