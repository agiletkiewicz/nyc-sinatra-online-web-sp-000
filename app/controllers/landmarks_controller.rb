class LandmarksController < ApplicationController
  # add controller methods
  
  get '/landmarks/new'
  @figures = Figure.all 
  
  erb :'landmarks/new'
  end
  
  
  
end
