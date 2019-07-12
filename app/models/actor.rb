class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    character = self.find_or_create_by(name: "Drake")
    show = self.find_or_create_by(name: "Drake")
    "#{character} - #{show}"
  end

end
