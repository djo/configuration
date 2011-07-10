class Setting < ActiveRecord::Base
  enum_attr :kind, %w(string number email)
  
  validates :name, :presence => true
  validates :value, :presence => true
  validates :kind, :presence => true
end
