class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :users
end
