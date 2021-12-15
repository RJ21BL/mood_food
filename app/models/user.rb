class User < ApplicationRecord
  acts_as_favoritor
  has_secure_password
  validates_uniqueness_of :email   
end 