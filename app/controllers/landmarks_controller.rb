class LandmarksController < ApplicationController
  # add controller methods
  
  get '/landmarks/new' do
    @figures = Figure.all 
    
    erb :'landmarks/new'
  end
  
  post '/landmarks' do 
    @landmark = Landmark.create(params[:landmark])
    @landmark.title = Title.find_or_create_by(name: params[:title][:name])
    
    erb :'landmarks/index'
  end
  
  
  
end
