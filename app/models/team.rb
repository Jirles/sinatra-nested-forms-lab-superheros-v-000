class Team 
  
  attr_accessor :name, :moto, :heroes
  TEAMS = []
  
  def initialize(args)
    @name = args[:name]
    @moto = args[:moto]
    @heroes = []
    TEAMS << self 
  end
  
  def add_hero(hero)
    @heroes << hero
    hero.team = self 
  end 
  
  def self.all 
    TEAMS
  end 
  
end 