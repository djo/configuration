class Setting < ActiveRecord::Base
  validates :name, :presence => true
  validates :value, :presence => true
  validates :kind, :presence => true
end
