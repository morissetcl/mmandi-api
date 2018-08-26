Cloudinary.config do |config|
  config.cloud_name = 'dlna8yzfyj'
  config.api_key = ENV["CLOUDINARY_API_KEY"]
  config.api_secret = ENV["CLOUDINARY_API_SECRET"]
  config.secure = true
  config.cdn_subdomain = true
end
