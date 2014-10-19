class Role < ActiveRecord::Base
  attr_accessible :person_id, :project_id, :status_id, :title

  belongs_to :project
  belongs_to :person
  belongs_to :status

  validates :project_id, 	:presence => true
  validates :person_id, 	:presence => true
  validates :status_id, 	:presence => true
  validates :title, 		:presence => true


end
