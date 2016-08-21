class EmployerRepresentativesController < ApplicationController

  def index
    if params[:search]
      @employer_representatives = EmployerRepresentative.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 25)
    else
      @employer_representatives = EmployerRepresentative.all.order('created_at DESC').paginate(page: params[:page], per_page: 25)
    end
  end

  def show
    @employer_representatives = EmployerRepresentative.find(params[:id])
  end

end
