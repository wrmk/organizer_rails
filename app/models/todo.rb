class Todo < ApplicationRecord
  validates :text,  presence: true
  validates :isCompleted, inclusion: [true,false] 

  # validate :check_boolean_field

  # def check_boolean_field
  #   false unless self.isCompleted.is_a?(Boolean)
  # end

  belongs_to :project
end
