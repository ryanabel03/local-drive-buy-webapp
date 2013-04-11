module ListingsHelper

  def categories
    [["Goods", 0], ["Edibles", 1]]
  end

  def goods_sub_categories
    [
      ["Arts & Crafts", 0], 
      ["Clothing", 1], 
      ["Health & Fitness", 2],
      ["Furniture", 3], 
      ["Other", 4]
    ]
  end

  def edible_sub_categories
    [
      ["Brewery / Winery", 0],
      ["Farmer's Market", 1],
      ["Restaurant", 2],
      ["Roadside Stand", 3],
      ["U-Pick / Orchard", 4]
    ]
  end

  def goods_filters
    [
      "Handmade",
      "Locally owned",
      "Locally produced",
      "Organic materials used"
    ]
  end

  def edibles_filters
    [
      "Free-range & grass-fed",
      "Allergy friendly",
      "Locally produced",
      "No spray",
      "Organic",
      "Slow food",
      "Vegetarian & vegan"
    ]
  end
  def create_hours(parameters)
    start_time = parameters[:start_time] ? parameters[:start_time] : 0
    end_time = parameters[:end_time] ? parameters[:end_time] : 24.hours
    increment = parameters[:increment] ? parameters[:increment] : 30.minutes
    Array.new(1 + (end_time - start_time)/increment) do |i|
      (Time.now.midnight + (i*increment) + start_time).strftime("%I:%M %p")
    end
  end
end
