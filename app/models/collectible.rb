class Collectible < ApplicationRecord
  #Associaitons
  belongs_to :user
  belongs_to :car

  #Cloudinary
  has_attachment :collectible_image

  #functions

  def car_name
    manufacturer = self.manufacturer
    car_model = self.model
    full_name = manufacturer + ", " + car_model
    return full_name
  end

  def find_car
    id = self.car_id
    car = Car.find(id)
    car_model = car.model
    car_manufacturer = car.manufacturer
    full_name = car_manufacturer + " " + car_model
    return full_name
  end

  def find_year(id)
    cars = Car.all
    car = Car.find(id)
    car_year = car.year
    return car_year
  end

  def find_image
    if self.collectible_image?
      return collectible_image.path
    else
      return "car_placeholder_uihtsv.jpg"
    end
  end
end
