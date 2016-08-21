class FreelancersController < ApplicationController

  def index
    if params[:search]
      @freelancers = Freelancer.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 25)
    else
      @freelancers = Freelancer.all.order('created_at DESC').paginate(page: params[:page], per_page: 25)
    end
  end

  def show
    @freelancer = Freelancer.find(params[:id])
  end

end
