class Setting < ActiveRecord::Base
  enum_attr :kind, %w(string number email)
  
  validates :name, :presence => true
  validates :value, :presence => true
  validates :kind, :presence => true
  
  validates :value, :format => { :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i }, 
                    :if => :email?

  validates :value, :numericality => true, 
                    :if => :number?
                    
  default_scope :order => 'created_at DESC'                  
end
