class Movie < ActiveRecord::Base
  def self.all_ratings
    return ['G', 'PG', 'PG-13', 'R']
  end

  def self.with_ratings(ratings)
    return where(rating: ratings)
  end

  def self.sorted_by(sort_by)
    if sort_by.present?
      return order(sort_by)
    else
      return all
    end
  end
end
