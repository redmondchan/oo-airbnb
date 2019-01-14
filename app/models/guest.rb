class Guest
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def listings
    # - Returns an array of all Listing instances a guest has stayed at
    x = []
    Trip.all.each do |trips|
      if trips.guest == self
        x << trips.listing
      end
    end
    x
  end

  def trips
    # - Returns an array of all Trip instances a guest has taken
    x = []
    Trip.all.each do |trips|
      if trips.guest == self
        x << trips
      end
    end
    x
  end

  def trip_count
  # - Returns the number of trips a Guest has taken
  self.trips.count
  end

   def self.all
     @@all
   end

   def self.pro_traveler
     # - Returns an array of all Guest instances who have made over 1 trip
     x = []
     self.trips.each do |trips|
       trips.count(trips.listing) > 1
       x << trips.guest
      end
      x
     end


end
