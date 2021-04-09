class Driver < ApplicationRecord
  has_one :license
  accepts_nested_attributes_for :license
end
