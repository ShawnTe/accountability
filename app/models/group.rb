class Group < ApplicationRecord
  has_many :members, :dependent => :destroy

  accepts_nested_attributes_for :members, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
