class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  validates :first_name, :presence => true
  validates :last_name, :presence => true

	before_save :cleanup

  def name
  	"#{first_name}" "#{last_name}"
  end


def cleanup
	self[:first_name] = self[:first_name].capitalize
end

end
