class ContactController < ApplicationController
	def index 
		@name = params[:name]
		@email = params[:email]
		@message = params[:message]
		@flag = params[:flag]
	end

	def send_contact
		name = params[:n]
		email = params[:e]
		message = params[:m]
		if name == "" || email == "" || message == ""
			redirect_to action: index, name: name, email: email, message: message, flag: true
		else
			UserMailer.generic_email("mohamedtamer92@gmail.com", "Email from #{name}",
		 	"#{name} with email #{email} said:" +"\n" + message).deliver
			redirect_to contact_path
		end
	end
end
