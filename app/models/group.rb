class Group < ActiveRecord::Base
  attr_accessible :description, :name

  # Relationships
  has_many :users
  

end
