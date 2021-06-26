class Todo < ApplicationRecord
  validates :text, :isCompleted, presence: true

  belongs_to :project
end
