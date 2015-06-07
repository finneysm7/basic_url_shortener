class Url < ActiveRecord::Base
  validates :link, :name, presence: true
  
  has_many :stats
end
