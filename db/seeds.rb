require 'faker'

nb_de_doctor = 5
nb_de_patient = 8
nb_d_appointment = nb_de_patient/2

puts "-- Création de #{nb_de_doctor} docteurs --"
nb_de_doctor.times do
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Job.field, code_postal: Faker::Address.zip_code)
end

puts "-- Création de #{nb_de_patient} patients --"
nb_de_patient.times do
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

puts "-- Création de #{nb_d_appointment} appointment --"
nb_d_appointment.times do
	Appointment.create(date: Faker::Date.forward(50), patient_id: rand(Patient.first.id..Patient.last.id), doctor_id: rand(Doctor.first.id..Doctor.last.id))
end
