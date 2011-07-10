class SettingsController < InheritedResources::Base
  actions :index, :new, :create
  
  layout :set_layout
  
  def create
    create! do |success, failure|
      success.html { redirect_to settings_url }
      failure.html { redirect_to settings_url }
    end
  end
  
  private
  
  def set_layout
    request.xhr? ? false : 'application'
  end
end
