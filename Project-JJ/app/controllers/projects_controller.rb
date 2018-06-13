class ProjectsController < ApplicationController
load_and_authorize_resource
skip_authorize_resource :only => :promises
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    
    @projects = Project.all
    respond_to do |format|

      format.html # index.html.erb

    end
  end
  def promises
	@promises = Promise.where(:project_id => @project.id)
	
  end

 def promisesnew
	
  end

  def search
    @projects = Project.search(params[:query])
    render 'index'

  end

  # GET /projects/1
  # GET /projects/1.json
  def show
	@Suma = UserFundProject.where(:project_id => @project.id,:email_confirmed => true).sum(:amount)
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end 

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :description, :donationamount, :category_id, :user_id, :deliverydate, :promise_id, :image, :donation, :yourdonation, :mark)
    end
end
