class Group < ApplicationRecord
  has_many :members, :dependent => :destroy

  accepts_nested_attributes_for :members, reject_if: :members_rejectable?, :allow_destroy => true

private

def members_rejectable?(attribute)
  attribute['name'].blank? && new_record?
end

end
