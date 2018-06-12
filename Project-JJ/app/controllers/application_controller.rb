class ApplicationController < ActionController::Base
	def index
	   @projects = Project.where(:mark => true)
 	end


end
