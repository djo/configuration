require 'spec_helper'

describe Setting do
  context "with email kind" do
    it "should be valid with correct email in value" do
      setting = Factory.build :setting, :kind => :email, 
                                        :value => 'email@example.com'
      setting.should be_valid
    end

    it "should not be valid with incorrect email in value" do
      setting = Factory.build :setting, :kind => :email, 
                                        :value => 'not email'
      setting.should_not be_valid
    end
  end
end
