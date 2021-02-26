class ApplicationController < ActionController::Base
	protected
	def authenticate_admin!
		if admin_signed_in?
	      super
	    else
	      redirect_to admin_session_path, :notice => 'You must login' unless admin_signed_in?
	      ## if you want render 404 page
	      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
	    end

		#redirect_to admin_session_path, notice: "You must login" unless admin_signed_in?
	end
	def after_sign_in_path_for(resource)
	  stored_location_for(resource) || admin_dashboard_index_path
	end
	def after_sign_out_path_for(resource)
	    if admin_signed_in?
	       
	       admin_dashboard_index_path
	    else
	       admin_session_path
	    end
    end
end
