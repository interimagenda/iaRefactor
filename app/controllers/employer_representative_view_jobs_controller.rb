class EmployerRepresentativeViewJobsController < ApplicationController

  before_action :authenticate_employer_representative!
  before_action :ensure_owner!, only: [:show, :edit, :new, :create, :update, :destroy]

  def index
    @jobs = Job.where(employer_representative: current_employer_representative).paginate(page: params[:page], per_page: 25)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job
    else
      render 'new'
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      redirect_to @job
    else
      render 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to my_jobs_path
  end

  protected

  def ensure_owner!
    if current_employer_representative != Job.find(params[:id]).employer_representative
      redirect_to my_jobs_path
    end
  end

  private

  def job_params
    params.require( :job ).permit(:title )
  end

end
