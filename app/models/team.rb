class Team 
  
  attr_accessor :name, :motto, :heroes
  TEAMS = []
  
  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
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