class Member < ApplicationRecord
  has_many :goals, :dependent => :destroy
  belongs_to :group

  accepts_nested_attributes_for :goals, reject_if: :goals_rejectable?, :allow_destroy => true

private
  def goals_rejectable?(attribute)
    attribute['description'].blank? && new_record?
  end
end
