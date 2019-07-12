class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    character = self.characters.map {|col_name| col_name.name}.to_s
    show = self.shows.map {|col_name| col_name.name}
    "#{character} - #{show}".to_s
  end

end
