class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all

    render("neighborhoods/index.html.erb")
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])

    render("neighborhoods/show.html.erb")
  end

  def new
    @neighborhood = Neighborhood.new

    render("neighborhoods/new.html.erb")
  end

  def create
    @neighborhood = Neighborhood.new

    @neighborhood.city = params[:city]
    @neighborhood.name = params[:name]

    save_status = @neighborhood.save

    if save_status == true
      redirect_to(:back, :notice => "Neighborhood created successfully.")
    else
      render("neighborhoods/new.html.erb")
    end
  end

  def edit
    @neighborhood = Neighborhood.find(params[:id])

    render("neighborhoods/edit.html.erb")
  end

  def update
    @neighborhood = Neighborhood.find(params[:id])

    @neighborhood.city = params[:city]
    @neighborhood.name = params[:name]

    save_status = @neighborhood.save

    if save_status == true
      redirect_to(:back, :notice => "Neighborhood updated successfully.")
    else
      render("neighborhoods/edit.html.erb")
    end
  end

  def destroy
    @neighborhood = Neighborhood.find(params[:id])

    @neighborhood.destroy

    if URI(request.referer).path == "/neighborhoods/#{@neighborhood.id}"
      redirect_to("/", :notice => "Neighborhood deleted.")
    else
      redirect_to(:back, :notice => "Neighborhood deleted.")
    end
  end
end
