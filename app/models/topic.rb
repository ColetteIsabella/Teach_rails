class Topic < ActiveRecord::Base

  has_one :skeleton
  accepts_nested_attributes_for :skeleton
end
