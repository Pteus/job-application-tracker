class JobApplication < ApplicationRecord
  belongs_to :user

  has_rich_text :notes

  STATUSES = %w[active inactive rejected abandoned]
  validates :status, inclusion: { in: STATUSES }

  validates :company_name, :job_title, :applied_on, presence: true
end
