require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  extend Paramable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []


  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
