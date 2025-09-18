class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  has_many :job_applications, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :first_name, :last_name, presence: true
  validates :email_address, presence: true, uniqueness: true
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email" }

  def full_name
    "#{first_name} #{last_name}"
  end
end
