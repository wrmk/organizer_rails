class ProjectSerializer < ActiveModel::Serializer
  attributes :title
  has_many :todos
end
