class PhotosController < ApplicationController
    def new
        @photo = Photo.new
    end

    def create

    end

    private
    def photo_params
        params.require(:photo).permit(:good_path, :bad_path, :ordinary_path, :body, :header_image)
    end
end
