class Relationship < ApplicationRecord
  validates :user_id, {presence: true}
  validates :follow_id, {presence: true}
end
