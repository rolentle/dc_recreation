class RecreationCenter < ApplicationRecord
  def pool?
    ![nil, 'none'].include?(pool)
  end

  def fitness_center?
    ![nil, 'No'].include?(fitness_center)
  end

  def school_site?
    ![nil, 'no'].include?(school_site)
  end

  def google_map_url
    coords = "#{y},#{x}"
    "https://www.google.com/maps/embed/v1/place?key=#{api_key}&q=#{coords}"
  end

  def api_key
    Figaro.env.google_maps_api_key
  end
end
