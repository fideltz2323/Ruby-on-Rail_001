class TinymceUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  include CarrierWave::ImageOptimizer

  # Choose what kind of storage to use for this uploader:
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    'uploads/images'
  end
  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
