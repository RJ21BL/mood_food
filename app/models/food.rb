class Food < ApplicationRecord
def image_name(name)
  @food_image = name.gsub! ' ', '_'
  @food_image = '/' + @food_image.downcase + '.jpeg'
end 
end