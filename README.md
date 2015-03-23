---
tags: kids, ruby, yelp, food, apis
languages: ruby
level: 1
type: Intro, Documentation
---

### Yelp

[Yelp](https://www.yelp.com) has an easy to use developer API that is made even easier for Rubyist by the [Yelp Ruby gem](https://github.com/Yelp/yelp-ruby).

First step - register yourself as a develope with Yelp. Following this link [Yelp API](https://www.yelp.com/developers) and click on "Get Started". In the url field you can put "http://localhost:9393" for now and whatever you would like in the description field. You should be redirected to a page displaying your API credentials. Stay there. You'll need those in a second.

Then install the Yummly gem on your computer. In terminal, from any directory, enter `gem install yelp`

Next, you will need to follow the instructions below to set up your app:

### Setup

Paste this into your `Gemfile`:
``` ruby
gem 'yelp'
```

Paste this into your `.env` file.

``` ruby
yelp_consumer_key=<your consumer key>
yelp_consumer_secret=<your consumer secret>
yelp_token=<your token>
yelp_token_secret=<your token>
```

### Searching for busineses

The rest of the code below should go into a model (in the models directory) of your application. Then you'll need to create a new instance of that class inside of a route in your application controller and call your methods there.

If you are taking in a search criteria via a form, then you'll be calling methods in that `post` route.

``` ruby
# this creates a new connection to the Yelp API
Yelp.client.configure do |config|
  config.consumer_key = ENV['yummly_id']
  config.consumer_secret = YOUR_CONSUMER_SECRET
  config.token = YOUR_TOKEN
  config.token_secret = YOUR_TOKEN_SECRET
end

Yelp.client.search('San Francisco', { term: 'food' })

# this searches Yummly for a recipe and returns an array of recipe objects
results = Yummly.search('type of recipe you want') #=> an array of recipe results
```

Check out `yummly_test.rb` to see how you can pull out the name, ingredients and link to the first recipe in the array. To test the Flatiron Yummly account and see the results in that file, fork and clone this lab then run `ruby yummly_test.rb` in your terminal.

