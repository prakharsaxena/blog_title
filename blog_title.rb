#!/usr/bin/env ruby

#
# You don't need to change this file.
# Put your class in ./lib.blog.rb
#

require 'bundler'
Bundler.require :default
require 'net/http'
require './lib/blog.rb'

url = "http://rorcourse.tumblr.com"

blog = Blog.new url
puts blog.latest_title
