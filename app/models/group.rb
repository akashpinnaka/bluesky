class Group < ApplicationRecord
  belongs_to :load
  has_many :jumpers
end
