class Employee < ApplicationRecord
    has_many :front_views, foreign_key:"employee_id"
end

