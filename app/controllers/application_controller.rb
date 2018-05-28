require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  
  get "/" do 
    erb :super_hero
  end 
  
  post "/teams" do
    puts params
    #create team from params
    @team = Team.new(params[:team])
    #iterate through hero hashes and create Heroes, add to team.heroes
    params[:team][:members].each do |member|
      hero = Hero.new(member)
      @team.add_hero(hero)
    end
    
    erb :team 
  end 

end