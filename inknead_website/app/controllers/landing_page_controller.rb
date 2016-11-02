class LandingPageController < ApplicationController
	skip_before_action :verify_authenticity_token
  def index

  end

  def new
  	puts 'in the new'
  end

end