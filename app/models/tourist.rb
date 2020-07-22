# put your Tourist model here
class Tourist
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find {|tourist| tourist.name.downcase == name.downcase}
    end
    
    def visit_landmark(landmark)
        Trip.new(self,landmark)
    end

    def trips
        Trip.all.find_all {|trip| trip.tourist == self}
    end
    
    def landmarks
        self.trips.map {|trip| trip.landmark}
    end

    def never_visited
        Landmark.all - self.landmarks
    end



end