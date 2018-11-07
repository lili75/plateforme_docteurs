class Appointment < ApplicationRecord
	belongs_to :doctor, required: false
	belongs_to :patient, required: false
end
