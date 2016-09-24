class Member < ApplicationRecord
  has_many :goals, :dependent => :destroy
  belongs_to :group

  accepts_nested_attributes_for :goals, :reject_if => lambda { |a| a[:description].blank? }, :allow_destroy => true
end
