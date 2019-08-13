require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Memorable::InstanceMethods
  extend Findable::ClassMethods
  extend Findable::InstanceMethods
  include Paramable::InstanceMethods

  @@all = []

  def initialize
    @@all << self
  end

  # def self.find_by_name(name)
  #   @@all.detect{|a| a.name == name}
  # end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end
