require 'rails_helper'

RSpec.describe ImagesController, type: :controller do
  describe "#index" do
    it "assigns @images" do
      get :index
      expect(assigns(:images)).to_not be_nil
    end
  end
  describe "#new" do
    it "assigns @images" do
      get :new
      expect(assigns(:image)).to_not be_nil
    end
  end
  describe "#create" do
    it "create new image" do
      expect {
        post :create, image: { url: "http://example.com/", title: "test" }
      }.to change {
        Image.count
      }.from(0).to(1)
    end
  end
end
