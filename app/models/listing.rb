class Listing
  attr_reader :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def guests
    # - Returns an array of all Guest instances who have stayed at a listing
    x = []
    Trip.all.each do |trips|
      if trips.listing == self
        x << trips.guest
      end
    end
    x
  end

  def trips
    # - Returns an array of all Trip instances at a listing
    x = []
    Trip.all.each do |trips|
      if trips.listing == self
        x << trips
      end
    end
    x
  end

  def trip_count
    # Returns the number of trips that have been taken to that listing
    self.trips.count
  end

  def self.all
    @@all
  end

  def find_all_by_city(name)
  # - Takes an argument of a city name (as a string) and returns an array of all Listing instances for that city
    x = []
    Trip.all.each do |trips|
      if trips.listing.name == name
        x << trips.listing
      end
    end
    x
  end

  def self.most_popular
    # - Finds the listing that has had the most trips
    self.trips.each do |trips|
      trips.count(trips.listing) > 1
  end
end






end
