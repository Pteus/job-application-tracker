class JobApplication < ApplicationRecord
  belongs_to :user

  before_validation :normalize_url

  has_rich_text :notes

  STATUSES = %w[active inactive rejected abandoned]
  validates :status, inclusion: { in: STATUSES }

  validates :company_name, :job_title, :applied_on, presence: true

  private

  def normalize_url
    return unless url.present?

    unless url.match?(/\Ahttps?:\/\//)
      self.url = "https://#{url}"
    end
  end

  validates :url, format: {
    with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/,
    message: "must be a valid URL"
  }
end
