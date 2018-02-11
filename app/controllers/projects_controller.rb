class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@projects = Project.find(params[:id])
	end

	def edit
		@projects = Project.find(params[:id])
	end

	def update
		@projects = Project.find(params[:id])
		@projects.update(project_params)
		redirect_to @projects
	end

	def new
		@projects = Project.new
		
	end

	def create
		@projects = Project.new(project_params)
		@projects.save
		redirect_to @projects		
	end

	def destroy
		@projects = Project.find(params[:id])
		@projects.destroy
		redirect_to projects_url		
	end

private

	def project_params
		project_params = params.require(:project).permit(:name, :description, :target_pledge_amount, :website, :pledging_ends_on)
	end	
end

