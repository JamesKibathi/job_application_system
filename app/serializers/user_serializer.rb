class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username
  has_one :profile
  has_many :jobs
end
