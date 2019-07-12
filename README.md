# HAUNTED

Welcome to Haunted, an application where users can create, manage, and comment on their favorite haunted locations.

Features:
- create and login with a secure user account
- or login using Facebook Oauth
- create, read, update, delete haunted locations
- create, read, update, delete comments on haunted locations
- your login email address (or facebook email address) will be your username
- a user cannot update or delete other users' haunted locations or comments
- a user cannot see or interact with the application when logged out
- a user must be logged in to gain access to the app

## Installation

Clone or download this repository and run:

```
bundle install
rake db:migrate
rake db:seed
```

To start the rails server, run:
```
rails s
```
Go to http://localhost:3000/ to preview the application in your web browser.

Enjoy!

## Instructions

Create a new account, or login using your Facebook account.  
You will be redirected to the main Haunt index page where you will see a complete list of haunted locations.
From here, you can add new haunted locations, or add comments to existing haunted location.
You can update or delete your haunted locations and comments at any time.

## Specs

- app build using Ruby on Rails
- implemented [Devise](https://github.com/plataformatec/devise/blob/master/README.md) for user account authentication
- Facebook Oauth for third party login 
- Designed with MVC pattern, CRUD actions, and RESTful routes
- Bootstraped for minimal styling
- Seeded data for immediate use

## Contributing

Bug reports and pull requests are welcome on GitHub. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

The application is available as open source under the terms of the MIT License.
