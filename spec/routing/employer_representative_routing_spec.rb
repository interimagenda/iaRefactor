require 'rails_helper'

RSpec.describe EmployerRepresentativesController, type: :routing do

  describe "routing" do

    it "routes to #index" do
      expect(get: "/employer_representatives").to route_to("employer_representatives#index")
    end

    it "routes to #show" do
      expect(get: "/employer_representatives/1").to route_to("employer_representatives#show", id: "1")
    end

  end

end
