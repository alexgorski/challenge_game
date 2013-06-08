class Season < ActiveRecord::Base
  attr_accessible :title
  has_many :players
end
