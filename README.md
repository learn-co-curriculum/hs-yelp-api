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

### Searching for businesses

The rest of the code below should go into a model (in the models directory) of your application. Then you'll need to create a new instance of that class inside of a route in your application controller and call your methods there.

If you are taking search criteria via a form, then you should be calling methods in that `post` route.

``` ruby
# this creates a new connection to the Yelp API
Yelp.client.configure do |config|
  config.consumer_key = <your consumer key>
  config.consumer_secret = <your consumer secret>
  config.token = <your token>
  config.token_secret = <your token>
end

# this searches Yelp for food in the San Francisco area
response = Yelp.client.search('San Francisco', { term: 'food' })
# this will return an array of info for the results
response.businesses
```

Check out `yelp_test.rb` to test your credentials and see the info that you can get on each business returned in the search. Fork and clone this lab, add your credentials to the configuration, then run `ruby yelp_test.rb` in your terminal.

