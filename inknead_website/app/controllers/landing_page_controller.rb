class LandingPageController < ApplicationController
	skip_before_action :verify_authenticity_token
  def index

  end

  def new
  	puts 'in the new'
  	puts params[:email]
  	# puts ENV["MAILCHIMP_LIST_ID"]
  	gb = Gibbon::API.new
    gb.lists.subscribe({:id => ENV["MAILCHIMP_LIST_ID"], 
    										:email => {:email => params[:email]}, :double_optin => false}) 
  	redirect_to root_path
  end

end