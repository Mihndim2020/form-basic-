class Driver < ApplicationRecord
  has_one :license
  accepts_nested_attributes_for :license

  def name 
    [first_name, last_name].join(' ')
  end
end
