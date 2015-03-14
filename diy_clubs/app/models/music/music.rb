class Music < ActiveRecord::Base
  has_and_belongs_to_many :events
  scope :electronic, -> { where(electronic: true)}
  scope :acoustic, -> { where(acoustic: true)}
end