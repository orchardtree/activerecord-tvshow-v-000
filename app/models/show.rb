class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    self.name where.maximum(:rating)
  end
end