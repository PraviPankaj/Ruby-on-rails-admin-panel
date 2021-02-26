class Admin::AdminController < ApplicationController
	before_action :authenticate_admin!
	def index
		redirect_to admin_dashboard_index_path
		
		
	end

	

	
end
