#this file acts as the environment
require 'nokogiri'
require 'pry'
require_relative "daily_deal/version"

#the below code can be commented (deleted out) becayse the other code acts as the code that links everything together
#module DailyDeal
  # Your code goes here...
#end
require_relative './daily_deal/deal'
require_relative './daily_deal/cli'
