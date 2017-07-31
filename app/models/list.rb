class List < ApplicationRecord

  belongs_to :user
  enum status: { unlisted: 0, listed: 1, hidden: 2 }
end
