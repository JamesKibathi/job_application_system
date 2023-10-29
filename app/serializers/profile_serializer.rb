class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :bio, :resume_link, :created_at, :updated_at
end
