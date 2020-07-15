class LandmarksController < ApplicationController
  # add controller methods
  
  get '/landmarks/new' do
    @figures = Figure.all 
    
    erb :'landmarks/new'
  end
  
  post '/landmarks' do 
    
    erb :'landmarks/index'
  end
  
  
  
end
