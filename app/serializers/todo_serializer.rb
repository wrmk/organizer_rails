class TodoSerializer < ActiveModel::Serializer
  attributes :text, :isCompleted
  belongs_to :projects
end