# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :index do
   # resize_to_fit 300, 200
    cloudinary_transformation width: 300, height: 220, crop: :fill, radius:4,
    effect: "brightness:15"
  end

  version :show do
   # resize_to_fit 300, 200
    cloudinary_transformation width: 600, height: 350, crop: :fill, radius:4,
    effect: "brightness:15"
  end

end
