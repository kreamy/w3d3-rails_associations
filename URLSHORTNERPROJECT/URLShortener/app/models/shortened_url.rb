class ShortenedUrl < ApplicationRecord
  validates :longurl, :shorturl, uniqueness: true, presence: true
  validates :user_id, presence: true

  def self.random_code
    gen=SecureRandom.urlsafe_base64
    gen=SecureRandom.urlsafe_base64 while ShortenedUrl.exists?(shorturl: gen)
    gen
  end

  def self.factory(user, url)
    if ! user.is_a? string riase error
      ShortenedUrl.create!(user_id: user, shorturl: random_code(), longurl: url)
  end
end
