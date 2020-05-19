class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :name, {presence: true, length: {maximum: 20}}
  validates :email, {presence: true, uniqueness: true, length: {maximum: 30}}

  def posts
    return Post.where(user_id: self.id)
  end
end
