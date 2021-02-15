# Trumpster

## Description
This is the API of the full stack application that we have created for the sole purpose of making fun of the former president of the United States, Mr Donald J. Trump. During his presidency he have made life hard for comedians whom makes political commentary. How do you make a joke about a living joke? The answer that we find to be the best is to show the original joke without context or commentary, let the man speak for himself.
The website is made by using an external API called [Tronald Dump](https://www.tronalddump.io/). This API is a collection of all the dumbest things that Donald Trump has ever said. We use our API to modify the data from the Tronald Dump API and then use Axios to to request in order to get relevant data.
The functionality is based on different leaves of authentication. When you are just a visitor you will get one random quote that will update every time you refresh the page.
When you are a registered user you have the ability to search for a quote from the Tronald Dump API. You become a registered user by providing the webpage with you’re Email and a password.
But when you are a subscriber you will be able to customize your own insult insider by Trump. You become a subscriber by adding you card information and paying us 3kr.

## The code
- [Deployed App(Netlify)](https://trumpster-dumpster.netlify.app)
- [Client](https://github.com/salindholm/trumpster_client)
- [Github](https://github.com/salindholm/trumpster_api)

## User stories
```
As an API,
In order to be able to show a random quote on our website,
We would like to get a random quote from an external API.
```
```
As an API,
In order for users to search through quotes,
We would like to authenticate the visitor.
```
```
As an API,
In order to provide the user with a search function,
We would like to get data from our external API.
```

## Dependencies
- Rails
- RSpec
- Rack-cors
- Devise_token_auth
- Stripe-rails
- Rest-client
- Shoulda-matchers
- Factory_bot_rails
- Pry-rails
- Webmock

## Acknowledgements
- Course material from [Craft Academy](https://www.craftacademy.se/english/)

## License
MIT License

## Authors
- [Sanne Lindholm](https://github.com/salindholm)
- [Kyungin Na](https://github.com/KyunginNa)
- [Viktor Karlsson](https://github.com/ViktorHek)
- [Paulo Swärdblad](https://github.com/swardbladpaulo)
- [Paulina Sobczak](https://github.com/psnoya)
