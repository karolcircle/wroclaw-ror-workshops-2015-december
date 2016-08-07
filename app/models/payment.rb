class Payment < ActiveRecord::Base
  belongs_to :student
  
  STATUS = %w(paid unpaid)
  validates :paid, inclusion: { in: STATUS }, presence: true

end
