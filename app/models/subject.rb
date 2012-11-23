class Subject < ActiveRecord::Base
  scope :visible, where(:visible => true)
  scope :invisible, where(:visible => false)
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}
  attr_accessible :name, :position, :visible
end
