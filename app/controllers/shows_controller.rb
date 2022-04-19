class ShowsController < ApplicationController

  def index
    @shows = Show.all
    render :index
  end
  
  def create
    @show = Show.create!(
      title: params["title"],
      plot: params["plot"],
      year: params["year"]
      )
  
    render :show
      
  end
  
  def show
    show_id = params[:id]
    @show=Show.find_by(id: show_id)
    render :show
  end

  def edit
    
  end

  def delete
    
  end


end
