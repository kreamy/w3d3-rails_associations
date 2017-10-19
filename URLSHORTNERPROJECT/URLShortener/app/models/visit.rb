class Visit < ApplicationRecord
  validates :url, :user_id, presence: true

end
