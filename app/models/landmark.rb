require 'pry'

class Landmark
    attr_accessor :name, :city, :tourists

    @@all = []

    def initialize(name, city, tourists)
      @name = name
      @city = city
      @tourists = tourists
      self.class.all << self
    end

    def self.all
      @@all
    end

    def trips
      Trip.all.select {|trip| trip.landmark == self}
    end

end
