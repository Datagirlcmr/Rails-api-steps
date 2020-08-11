class Step < ApplicationRecord
   
  # Model associations
  belongs_to :user
  # validations
  validates_presence_of :date, :steps

end
