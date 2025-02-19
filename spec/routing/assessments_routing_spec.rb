require "rails_helper"

RSpec.describe AssessmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/assessments").to route_to("assessments#index")
    end

    it "routes to #new" do
      expect(get: "/assessments/new").to route_to("assessments#new")
    end

    it "routes to #show" do
      expect(get: "/assessments/1").to route_to("assessments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/assessments/1/edit").to route_to("assessments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/assessments").to route_to("assessments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/assessments/1").to route_to("assessments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/assessments/1").to route_to("assessments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/assessments/1").to route_to("assessments#destroy", id: "1")
    end
  end
end
