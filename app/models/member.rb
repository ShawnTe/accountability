class Member < ApplicationRecord
  has_many :goals
  belongs_to :group
end
