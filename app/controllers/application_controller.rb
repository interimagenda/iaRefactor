class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  devise_group :person, contains: [:freelancer, :employer_representative]

  protected

  def ensure_freelancer!
    unless current_freelancer

      redirect_to root_path

      return false
    end
  end

  def ensure_employer_representative!
    unless current_employer_representative

      redirect_to root_path

      return false
    end
  end

end
