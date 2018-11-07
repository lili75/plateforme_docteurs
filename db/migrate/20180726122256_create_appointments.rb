class CreateAppointments < ActiveRecord::Migration[5.2]
	def change
    	create_table :appointments do |t|
    		t.references :patient, index: true
    		t.references :doctor, index: true

    		t.datetime :date

      		t.timestamps
    	end
  	end
end
