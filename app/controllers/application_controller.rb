require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  
  get "/" do 
    erb :super_hero
  end 
  
  post "/teams" do
    #create team from params
    @team = Team.new(params[:team])
    #iterate through hero hashes and create Heroes, add to team.heroes
    params[:team][:heroes].each do |hero|
      member = Hero.new(hero)
      @team.add_hero(member)
    end
    binding.pry
    erb :team 
  end 

end