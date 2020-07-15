class LandmarksController < ApplicationController
  # add controller methods
  
  get '/landmarks/new' do
    @figures = Figure.all 
    
    erb :'landmarks/new'
  end
  
  post '/landmarks' do 
    @landmark = Landmark.create(params[:landmark])
    if !params[:title][:name].empty?
      @landmark.title = Title.find_or_create_by(name: params[:title][:name])
      @landmark.save
    end
    
    erb :'landmarks/index'
  end
  
  
  
end
