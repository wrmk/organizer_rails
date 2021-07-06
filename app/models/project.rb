class Project < ApplicationRecord
  validates :title, uniqueness: {message: "that type of todo is already exist"}

  has_many :todos, -> {order('id ASC')}
end
