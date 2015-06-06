class Url < ActiveRecord::Base
  validates :link, :name, presence: true
end
