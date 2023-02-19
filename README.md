![Rugby](https://user-images.githubusercontent.com/449385/218269381-8f8cd682-139a-40c0-be7b-76376de3752f.svg)

# Rugby (server)

The Ruby-powered server for the music video for Rugby.

☝️ Rugby includes a separate client that handles the front end:
https://github.com/superhighfives/rugby

## Requirements

* Ruby 1.9
* Bundler (`gem install bundler`)
* Memcached (`brew install memcached`)
* A Giphy API key (the public key is dc6zaTOxFJmzC)

## Setup

Copy the sample foreman enviroment, customising the Giphy keys to match either a production API key or the public beta key.

    bundle
    cp sample.env .env

## Running

    memcached &
    bundle exec foreman start

## Refreshing Gifs

Locally:

    bundle exec foreman run ruby scripts/fetch.rb

or via the Heroku Scheduler add-on:

    ruby scripts/fetch.rb

## Deploying

You also need to make sure the correct Twitter app env values are set:

    heroku config:add SUPER_AWESOME_GIPHY_KEY blahblahblah
    etc

## License

This code (not including the lyrics) is licensed under a [Creative Commons Attribution License](http://creativecommons.org/licenses/by/3.0/): you may use it, but you must give attribution.
