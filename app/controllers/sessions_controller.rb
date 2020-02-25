class SessionsController < ApplicationController
	skip_before_action :logged_in?, only: [:new, :create]

	def new
	end

	def create
		return redirect_to login_path if params[:name].nil? || params[:name].empty?

		session[:name] = params[:name]
		# redirect_to some_page
	end

	def destroy
		session.delete(:name)
		redirect_to login_path
	end

end 