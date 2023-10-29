class JobApplicationSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at
  belongs_to :user, serializer: UserSerializer
  belongs_to :job, serializer: JobSerializer
end
