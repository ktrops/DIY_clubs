class Event < ActiveRecord::Base

  belongs_to :building
  has_and_belongs_to_many :musics

  accepts_nested_attributes_for :building, :musics
end