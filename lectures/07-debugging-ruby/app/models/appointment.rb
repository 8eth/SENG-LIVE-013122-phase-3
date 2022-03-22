class Appointment < ActiveRecord::Base
    belongs_to :patient
    belongs_to :vet

    # Activity 1 => Building Aggregate Class / Instance Methods

    # Class Methods

    # Return earliest appointment
    def self.earliest
        self.all.minimum(:date) #returns date of earliest appointment
        # self.all.order(:date).first #returns full instance of earliest appt
    end

    # Return latest appointment
    def self.latest
        self.all.maximum(:date)     
    end
    
    # Instance Methods
    
    # Return appointment patient's name
    def get_patient_name
        self.patient.name
    end

    # Return appointment vet's name
    def get_vet_name
        self.vet.vet_name
    end
end 

