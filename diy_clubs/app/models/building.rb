class Building < ActiveRecord::Base
  has_one :event, foreign_key: "event_id"
end