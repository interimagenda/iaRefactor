require 'rails_helper'

RSpec.describe JobsController, type: :controller do

  # index

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns Jobs" do
      Job.create
      get :index
      expect(assigns(:jobs.length)).to_not eq(0)
    end

  end

end
