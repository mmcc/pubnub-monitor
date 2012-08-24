PubNub Monitor
===

This is a simple Sinatra app made to help make testing a PubNub-enabled app easier. I wanted to be able to very simply monitor the happenings of a given channel and send a simple test message occasionally, so I threw this together.

Usage
===

Once you've cloned the repository, you need to create a config file with your publish and subscribe keys in it. You'll need to create an account with PubNub first to get them if you don't already.

    mv config-sample.yml config.yml

Then edit the file accordingly. Once that's done, simply start the server and go!

    ruby -rubygems monitor.rb

And the monitor is available at localhost:4567/CHANNEL_NAME. A channel name is required for it to do anything, so if you don't include the channel name in the url it's going to be pretty boring. Enjoy!