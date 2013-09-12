# ladda-sprockets

Ladda is a UI concept merging the loading indicator into the action
invoked them. Here we package it for Asset Pipeline usage.
The original source is from [github.com/hakimel/Ladda](https://github.com/hakimel/Ladda)
where you can check out the instructions. And there is a [demo page](http://lab.hakim.se/ladda/).

## Usage

If there is a Gemfile, declare 

    gem "ladda-sprockets"

or

    require "ladda-sprockets"

in proper situation in your application after `$ gem install ladda-sprockets`

Then in head of the major javascript file append

    //= require "spin"
    //= require "ladda"

Note you must declare `//= require spin` first. Spin is the dependency of Ladda.

If you have manual management of search paths of Sprockets::Environment, `Ladda::Sprockets.path` will return
the path of javascripts.

Stylesheets from Ladda can be loaded with

    @import "ladda";
    @import "ladda-theme";

Where `ladda-theme` is optional as documented in [original README](https://github.com/hakimel/Ladda#instructions).
