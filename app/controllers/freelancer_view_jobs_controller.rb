class FreelancerViewJobsController < ApplicationController

  before_action :authenticate_freelancer!, only: [:index, :show]

  def index
    @jobs = Job.all.paginate(page: params[:page], per_page: 25)
  end

  def show
    @job = Job.find(params[:id])
  end

end
