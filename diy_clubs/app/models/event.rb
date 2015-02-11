class Event < ActiveRecord::Base
  has_many :buildings
  has_and_belongs_to_many :musics
end