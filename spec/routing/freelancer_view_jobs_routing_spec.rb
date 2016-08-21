require 'rails_helper'

RSpec.describe EmployerRepresentativeViewJobsController, type: :routing do

  describe "routing" do

    it "routes to #index" do
      expect(get: "/my_jobs").to route_to("employer_representative_view_jobs#index")
    end

    it "routes to #show" do
      expect(get: "/my_jobs/1").to route_to("employer_representative_view_jobs#show", id: "1")
    end

    it "routes to #new" do
      expect(get: "/my_jobs/new").to route_to("employer_representative_view_jobs#new")
    end

    it "routes to #create" do
      expect(post: "/my_jobs").to route_to("employer_representative_view_jobs#create")
    end

    it "routes to #edit" do
      expect(get: "/my_jobs/1/edit").to route_to("employer_representative_view_jobs#edit", id: "1")
    end

    it "routes to #update" do
      expect(patch: "/my_jobs/1").to route_to("employer_representative_view_jobs#update", id: "1")
    end

  end

end
