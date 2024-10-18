class Customer < ApplicationRecord
    has_many :orders

    # Ensure the name, phone, and email are present
  validates :name, :phone, presence: true

  # Validate that email is present and correctly formatted
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }

  # Optional: Ensure the email is unique
  validates :email, uniqueness: true
end
