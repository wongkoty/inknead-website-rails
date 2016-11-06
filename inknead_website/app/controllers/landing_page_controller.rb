class LandingPageController < ApplicationController
	skip_before_action :verify_authenticity_token
	
  def index

  end

  def new
  	# puts 'in the new'
  	# puts params[:email]
  	# puts ENV["MAILCHIMP_LIST_ID"]
  	gb = Gibbon::API.new
    # gb.lists.subscribe({:id => ENV["MAILCHIMP_LIST_ID"], 
    # 										:email => {:email => params[:email]}, :double_optin => false}) 
    # # if error
    # 	redirect_to root_path
    # end
    # error = Gibbon::MailChimpError
    # puts error.message

    # meow = gb.lists.subscribe({:id => ENV["MAILCHIMP_LIST_ID"], 
    # 										:email => {:email => params[:email]}, :double_optin => false})
    # puts meow 

	begin
  	gb.lists.subscribe({:id => ENV["MAILCHIMP_LIST_ID"], 
    										:email => {:email => params[:email]}, :double_optin => false}) 
	rescue Gibbon::MailChimpError => e
  	puts "Houston, we have a problem: #{e.message}"
	end

		# puts "#{e.message}"

	if e.blank?
		redirect_to root_path, :flash => { :success => "Success!"}
	else
		redirect_to root_path, :flash => { :error => "#{e.message}"}
	end

  end

end