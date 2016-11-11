class RestarantTagsController < ApplicationController
  def index
    @restarant_tags = RestarantTag.page(params[:page])

    render("restarant_tags/index.html.erb")
  end

  def show
    @restarant_tag = RestarantTag.find(params[:id])

    render("restarant_tags/show.html.erb")
  end

  def new
    @restarant_tag = RestarantTag.new

    render("restarant_tags/new.html.erb")
  end

  def create
    @restarant_tag = RestarantTag.new

    @restarant_tag.restaurant_id = params[:restaurant_id]
    @restarant_tag.tag_id = params[:tag_id]

    save_status = @restarant_tag.save

    if save_status == true
      redirect_to(:back, :notice => "Restarant tag created successfully.")
    else
      render("restarant_tags/new.html.erb")
    end
  end

  def edit
    @restarant_tag = RestarantTag.find(params[:id])

    render("restarant_tags/edit.html.erb")
  end

  def update
    @restarant_tag = RestarantTag.find(params[:id])

    @restarant_tag.restaurant_id = params[:restaurant_id]
    @restarant_tag.tag_id = params[:tag_id]

    save_status = @restarant_tag.save

    if save_status == true
      redirect_to(:back, :notice => "Restarant tag updated successfully.")
    else
      render("restarant_tags/edit.html.erb")
    end
  end

  def destroy
    @restarant_tag = RestarantTag.find(params[:id])

    @restarant_tag.destroy

    if URI(request.referer).path == "/restarant_tags/#{@restarant_tag.id}"
      redirect_to("/", :notice => "Restarant tag deleted.")
    else
      redirect_to(:back, :notice => "Restarant tag deleted.")
    end
  end
end
