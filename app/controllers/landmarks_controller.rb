class LandmarksController < ApplicationController
  # add controller methods
  
  get '/landmarks/new' do
    @figures = Figure.all 
    
    erb :'landmarks/new'
  end
  
  post '/landmarks' do 
    @landmark = Landmark.create(params[:landmark])
    
    
    erb :'landmarks/index'
  end
  
  
  
end
