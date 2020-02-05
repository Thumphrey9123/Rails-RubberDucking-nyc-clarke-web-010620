class Duck < ApplicationRecord
    validates :student_id, presence: true
    belongs_to :student
end
