class Address < ActiveRecord::Base
  belongs_to :contact
  validates :address, :presence => true
end
