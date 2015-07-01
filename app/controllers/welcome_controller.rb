class WelcomeController < ApplicationController
  def index

  	@data = Wordnik.word.get_definitions('hysterical')
  end
end
