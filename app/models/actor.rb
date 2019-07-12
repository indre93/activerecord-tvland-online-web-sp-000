class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters = Character.find_or_create_by(name = nil)
    self.shows = Show.find_or_create_by(name = nil)
    "#{character} - #{show}"
  end

end
