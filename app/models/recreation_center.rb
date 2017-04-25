class RecreationCenter < ApplicationRecord
  def pool?
    ![nil, 'none'].include?(pool)
  end
end
