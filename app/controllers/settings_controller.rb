class SettingsController < InheritedResources::Base
  actions :index, :new, :create
  
  layout :set_layout
  
  def create
    create! do |success, failure|
      success.html { render :create }
      failure.html { render :errors, :status => :bad_request }
    end
  end
  
  private
  
  def set_layout
    request.xhr? ? false : 'application'
  end
end
