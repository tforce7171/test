class User < ApplicationRecord
  validates :ign, {presence: true, uniqueness: true}
  validates :password, {presence: true}
  validates :roll, {presence: true}
  validates :clan, {presence: true}
end
