class CitiesController < ApplicationController
  def index
    @cities = City.all

    render("cities/index.html.erb")
  end

  def show
    @city = City.find(params[:id])

    render("cities/show.html.erb")
  end

  def new
    @city = City.new

    render("cities/new.html.erb")
  end

  def create
    @city = City.new

    @city.name = params[:name]

    save_status = @city.save

    if save_status == true
      redirect_to(:back, :notice => "City created successfully.")
    else
      render("cities/new.html.erb")
    end
  end

  def edit
    @city = City.find(params[:id])

    render("cities/edit.html.erb")
  end

  def update
    @city = City.find(params[:id])

    @city.name = params[:name]

    save_status = @city.save

    if save_status == true
      redirect_to(:back, :notice => "City updated successfully.")
    else
      render("cities/edit.html.erb")
    end
  end

  def destroy
    @city = City.find(params[:id])

    @city.destroy

    if URI(request.referer).path == "/cities/#{@city.id}"
      redirect_to("/", :notice => "City deleted.")
    else
      redirect_to(:back, :notice => "City deleted.")
    end
  end
end
