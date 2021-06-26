class Project < ApplicationRecord
  validates :title, uniqueness: {message: "that type of todo is already exist"}

  has_many :todos
  accepts_nested_attributes_for :todos
end
