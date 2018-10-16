require 'pry'

class Tourist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|tourist| tourist.name == name}
  end

  def trips
    Trip.all.select {|trip| trip.tourist == self}
  end

  def landmarks
    Landmark.all.select {|landmark| landmark.tourists == self}
  end

  def visit_landmark(landmark)
    Trip.new(self, landmark)
  end
end
