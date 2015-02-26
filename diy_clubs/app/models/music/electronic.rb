class Electronic < Music
  has_one :powersource

  accepts_nested_attributes_for :powersource
end