# Commerce

A practice rails application re-doing alot of ecommerce stuff I've done previously with upto date tech, features and specs

## Why Ruby 1.8.7

This project prefers Ruby 1.8.7 because it is fast for development. Rails start up time for an empty project is at least 50% faster than 1.9.2, and many times faster than JRuby.

Running `rails new` under 1.9.2 generates code that won't compile under 1.8.7. So we'll default to 1.8.7 and try and keep 1.9.2 specific code out of the application.

## Developing on this application

See: [README_FOR_DEVS](/doc/README_FOR_DEVS.md)
