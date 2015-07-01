# Load the Rails application.
require File.expand_path('../application', __FILE__)
config.gem "wordnik"

# Initialize the Rails application.
Rails.application.initialize!

ENV['WORDNIK_API_KEY'] = "72f822a10caf5b76405070ac1070691e86b0ba82383543f4d"
