class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end
  #highest_rating: this method should return the highest value in the ratings column. hint: if there is a #minimum Active Record method, might there be a #maximum method?
  def self.most_popular_show
    Show.where(highest_rating).order(rating: :desc).limit(1)[0]
  end
  #most_popular_show: this method should return the show with the highest rating. hint: use the #highest_rating method as a helper method.
  def self.lowest_rating
    Show.minimum(:rating)
  end
  #lowest_rating: returns the lowest value in the ratings column.
  def self.least_popular_show
    Show.where(lowest_rating).order(rating: :asc).limit(1)[0]
  end
  #least_popular_show: returns the show with the lowest rating.
  def self.ratings_sum
    Show.sum(:rating)
  end
  #ratings_sum: returns the sum of all of the ratings.
  def self.popular_shows
    Show.where("rating > ?", 5)
  end
  #popular_shows: returns an array of all of the shows that have a rating greater than 5. hint: use the #where method Active Record method.
  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
  #shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the #order Active Record method.

end
