require 'rails_helper'

RSpec.describe EmployerRepresentativeViewJobsController, type: :routing do

  describe "routing" do

    it "routes to #index" do
      expect(get: "/jobs").to route_to("freelancer_view_jobs#index")
    end

    it "routes to #show" do
      expect(get: "/jobs/1").to route_to("freelancer_view_jobs#show", id: "1")
    end

  end

end
