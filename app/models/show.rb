class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    binding.pry
    actors = []
    self.characters.each do |character|
      actors << character.actor.name
    end
    actors
  end

end
