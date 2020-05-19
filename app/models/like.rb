class Like < ApplicationRecord
  belong_to :user
  validates :user_id, {presence: true}
  validates :post_id, {presence: true}
end
