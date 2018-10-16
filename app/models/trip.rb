require 'pry'

class Trip
    attr_accessor :tourist, :landmark
    @@all = []

    def initialize(tourist, landmark)
      @tourist, @landmark = tourist, landmark
      self.class.all << self
    end

    def self.all
      @@all
    end

end
