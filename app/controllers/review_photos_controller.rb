class ReviewPhotosController < ApplicationController
  def index
    @review_photos = ReviewPhoto.all

    render("review_photos/index.html.erb")
  end

  def show
    @review_photo = ReviewPhoto.find(params[:id])

    render("review_photos/show.html.erb")
  end

  def new
    @review_photo = ReviewPhoto.new

    render("review_photos/new.html.erb")
  end

  def create
    @review_photo = ReviewPhoto.new

    @review_photo.link = params[:link]
    @review_photo.review_id = params[:review_id]

    save_status = @review_photo.save

    if save_status == true
      redirect_to(:back, :notice => "Review photo created successfully.")
    else
      render("review_photos/new.html.erb")
    end
  end

  def edit
    @review_photo = ReviewPhoto.find(params[:id])

    render("review_photos/edit.html.erb")
  end

  def update
    @review_photo = ReviewPhoto.find(params[:id])

    @review_photo.link = params[:link]
    @review_photo.review_id = params[:review_id]

    save_status = @review_photo.save

    if save_status == true
      redirect_to(:back, :notice => "Review photo updated successfully.")
    else
      render("review_photos/edit.html.erb")
    end
  end

  def destroy
    @review_photo = ReviewPhoto.find(params[:id])

    @review_photo.destroy

    if URI(request.referer).path == "/review_photos/#{@review_photo.id}"
      redirect_to("/", :notice => "Review photo deleted.")
    else
      redirect_to(:back, :notice => "Review photo deleted.")
    end
  end
end
