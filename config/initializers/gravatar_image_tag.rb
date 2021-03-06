# config/initializers/gravatar_image_tag.rb
GravatarImageTag.configure do |config|
  config.default_image = :identicon
  config.filetype      = nil   # Set this if you require a specific image file format ['gif', 'jpg' or 'png'].  Gravatar's default is png
  config.rating        = nil   # Set this if you change the rating of the images that will be returned ['G', 'PG', 'R', 'X']. Gravatar's default is G
  config.size          = nil   # Set this to globally set the size of the gravatar image returned (1..512). Gravatar's default is 80
  config.secure        = false # Set this to true if you require secure images on your pages.
end
