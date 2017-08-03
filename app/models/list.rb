class List < ApplicationRecord

  belongs_to :user

  has_one :link, dependent: :destroy

  enum status: { unlisted: 0, listed: 1, hidden: 2 }

  before_validation :generate_token, on: :create

  validates :title, :list_id, :token, presence: true
  validates :token, uniqueness: true

  def short_link
    link.short_link if link
  end

  private

  def generate_token
    begin
      self.token = SecureRandom.urlsafe_base64(64, false)
    end while self.class.find_by(token: token)
  end
end
