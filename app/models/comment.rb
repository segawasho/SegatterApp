class Comment < ApplicationRecord
  validates :user_id, {presence: true}
  validates :post_id, {presence: true}
  validates :content, {presence: true, length: {maximum:140}}

  def user
    return User.find_by(id: self.user_id)
  end
  
end
