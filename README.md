# Ucredential

This little gem generates user credentials. Right now it receives a couple of users
and generates a zip file in the public directory containing a pdf file with four
credentials per pager.

It uses resque for background process so you have to start redis first:

`redis-server`

And then start the background process.

`rake resque:work QUEUE="*"`

**Don't forget** you can mount the resque dashboard in you rails app to know whats going

`mount Resque::Server, :at => "/resque"`