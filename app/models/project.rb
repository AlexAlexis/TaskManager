class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks
  scope :newest_first, -> {order("created_at DESC")}
  scope :newest_two, -> {order("created_at  DESC").limit(2)}
end
