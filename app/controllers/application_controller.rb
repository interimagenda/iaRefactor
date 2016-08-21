class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  devise_group :person, contains: [:freelancer, :employer_representative]

end
