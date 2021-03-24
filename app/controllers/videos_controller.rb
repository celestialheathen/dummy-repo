class VideosController < ApplicationController

    def create
        image = Cloudinary::Uploader.upload(params[:image])
        video = Cloudinary::Uploader.upload(params[:video], :resource_type => :video)

        newfile = Video.create(image: image["url"], video: video["url"])
        render json: newfile
    end 

end
