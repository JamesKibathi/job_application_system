class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username
  has_one :profile, serializer: ProfileSerializer
  has_many :jobs
end
