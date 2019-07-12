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

- built using [Ruby on Rails](https://rubyonrails.org/)
- [Devise](https://github.com/plataformatec/devise/blob/master/README.md) for user account authentication
- [omniauth-facebook](https://github.com/mkdynamic/omniauth-facebook) for Facebook login authentication
- [bootstrap-sass](https://github.com/twbs/bootstrap-sass) for minimal styling
- Designed with MVC pattern, CRUD actions, and RESTful routes
- Seeded data available for immediate use upon login

## Contributing

Bug reports and pull requests are welcome on GitHub. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License

The application is available as open source under the terms of the [MIT License](https://github.com/SilverBright/Haunted-App/blob/add-license-1/LICENSE).

MIT License

Copyright (c) 2019 Babs

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.