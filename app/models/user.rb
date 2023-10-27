class User < ApplicationRecord
    has_secure_password

    has_one :profile
    has_many :job_applications
    has_many :jobs, through: :job_applications
end
