class Court < ActiveRecord::Base
  has_many :events
  has_many :houses
end
