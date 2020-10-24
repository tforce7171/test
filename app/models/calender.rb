class Calender < ApplicationRecord
  validates :name, {presence: true}
  validates :admin_id, {presence: true, numericality: :only_integer}
  validates :room_id, {presence: true, numericality: :only_integer}

end
