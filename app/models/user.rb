class User < ApplicationRecord
  has_many :doodles
  validates_uniqueness_of :email
end
