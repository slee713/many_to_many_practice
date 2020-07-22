# put your Landmark model here

class Landmark
    attr_reader :name, :city
    @@all = []

    def initialize(name, city)
        @name = name 
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def new_trip_with(tourist)
        Trip.new(tourist, self)
    end

    def self.find_by_city(city)
        self.all.find_all {|landmark| landmark.city.downcase == city.downcase}
    end

    def trips
        Trip.all.find_all {|trip| trip.landmark==self}
    end

    def tourists
        self.trips.map {|trip| trip.tourist}
    end

end