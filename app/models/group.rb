class Group < ActiveRecord::Base
  attr_accessible :description, :name, :hack

  mount_uploader :hack, HackUploader
  

  # Relationships
  has_many :users
  

end
