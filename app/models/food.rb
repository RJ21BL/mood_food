class Food < ApplicationRecord
  # acts_as_favoritable

def image_name(name)
  @food_name = "#{name}"
  @food_image = @food_name.gsub! ' ', '_'
  @food_image = '/' + @food_image.downcase + '.jpeg'
end
end