class Project < ActiveRecord::Base
  attr_accessible :title

  has_many :roles, :dependent => :destroy

  validates :title, :presence => true
end
