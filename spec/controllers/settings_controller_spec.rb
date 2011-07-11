require 'spec_helper'

describe SettingsController do
  describe "#create" do
    context "success" do
      it "should be successfull" do
        do_request
        response.should be_successful
      end

      it "should render 'create' template" do
        do_request
        response.should render_template(:create)
      end
    end

    context "failure" do
      it "should not be successfull" do
        do_request(:name => '')
        response.should_not be_successful
      end

      it "should render 'create' template" do
        do_request(:name => '')
        response.should render_template(:errors)
      end
    end
      
    def do_request(opts = {})
      post :create, :setting => Factory.attributes_for(:setting).merge(opts)
    end
  end
end
