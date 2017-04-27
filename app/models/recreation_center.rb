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
end
