class Todo < ApplicationRecord
  validates :text,  presence: true
  validates :isCompleted, inclusion: [true,false] 

  belongs_to :project
end
