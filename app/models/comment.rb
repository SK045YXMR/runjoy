class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :run

  validates :text, presence:true
end
