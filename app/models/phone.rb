class Phone < ActiveRecord::Base
  belongs_to :contact

  validates :number, :presence => true, length: { is: 10 }
  validates :contact_id, :presence => true

end
