class User < ApplicationRecord
    # encrypt password
  has_secure_password

  # Model associations
  has_one :step, foreign_key: :date, dependent: :destroy
  # Validations
  validates_presence_of :name, :email, :password_digest
end
