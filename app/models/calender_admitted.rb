class CalenderAdmitted < ApplicationRecord
  validates :user_id, uniqueness: {scope: :calender_id}
end
