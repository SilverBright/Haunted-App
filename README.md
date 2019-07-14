# HAUNTED

Welcome to Haunted, an application where users can create, manage, and comment on their favorite haunted locations.

Specs:
- create and login with a secure user account
- login using Facebook Oauth
- your login email address (or facebook email address) will be your username
- Designed with MVC pattern, CRUD actions, and RESTful routes
- Minimal Bootstrap styling
- Simple navbar for quick and easy navigation

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

## Credits

- [Ruby on Rails](https://rubyonrails.org/)
- [Devise](https://github.com/plataformatec/devise/blob/master/README.md) for user account authentication
- [omniauth-facebook](https://github.com/mkdynamic/omniauth-facebook) for Facebook authentication
- [bootstrap-sass](https://github.com/twbs/bootstrap-sass) for minimal styling


## Contributing

Bug reports and pull requests are welcome on GitHub. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

The application is available as open source under the terms of the [MIT License](https://github.com/SilverBright/Haunted-App/blob/add-license-1/LICENSE).
