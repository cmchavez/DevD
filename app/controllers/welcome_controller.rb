class WelcomeController < ApplicationController
  def index
  	@data = Wordnik.word.get_definitions(params[:search])
  end


end
