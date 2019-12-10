class Store < ActiveRecord::Base
  has_many :employees
  validates :first_name, :last_name => true
  validates :hourly_rate => { :in => 40..20}
end
