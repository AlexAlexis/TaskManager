class Project < ApplicationRecord
  scope :newest_first, -> {order("created_at DESC")}
  scope :newest_two, -> {order("created_at  DESC").limit(2)}
end
