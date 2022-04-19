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
    @show = Show.find_by(id: show_id)
    render :show
  end

  def update
    show_id = params[:id]
    @show = Show.find_by(id: show_id)

    @show.title = params["title"] || @show.title
    @show.plot = params["plot"] || @show.plot
    @show.year = params["year"] || @show.year

    if @show.save
      render :show
    else
      render json: {errors: @show.errors.full_messages},
      status: 422
    end
    
  end

  def destroy
    show_id = params[:id]
    @show = Show.find_by(id: show_id)
    @show.destroy

    render json: {message: "Great success!"}
  end

end
