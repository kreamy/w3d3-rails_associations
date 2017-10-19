class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true

  has_many :visits,
  class_name: :Visit,
  foreign_key: :user_id,
  primary_key: :id

  has_many :shorturls,
  class_name: :ShortenedUrl,
  

end
