class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  def initialize_wordnik(options={})
    options.merge!({:api_key=>ENV['WORDNIK_API_KEY']})
    @wordnik = Wordnik::Wordnik.new(options)
    @wotd = @wordnik.word_of_the_day
  end


end
