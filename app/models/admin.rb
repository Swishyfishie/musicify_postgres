class Admin < ApplicationRecord
    has_many :concerts
    has_secure_password
end
