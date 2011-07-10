class SettingsController < InheritedResources::Base
  actions :index, :create
  
  def create
    create! do |success, failure|
      success.html { redirect_to settings_url }
      failure.html { redirect_to settings_url }
    end
  end
end
