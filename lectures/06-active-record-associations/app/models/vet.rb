# Activity 2: Adding Active Record Association Methods

class Vet < ActiveRecord::Base
    # Add necessary "has_many" Active Record macros to associate
    # one Vet with many Appointments and many Patients through Appointments.
    has_many :appointments
    has_many :patients, through: :appointments
    
    # NOTE => Remember that the order of Active Record macros matters!

    # Class Methods

    # Return all Vets' names
    # Test using Vet.all_vet_names
    # Hint => .pluck() (https://apidock.com/rails/ActiveRecord/Calculations/pluck)
    def self.all_vet_names
        self.pluck(:vet_name)
        # Vet.pluck(:vet_name) #this does the same thing
    end

    # Return Vet with the most Patients
    # Hint => .max() + .length() (https://apidock.com/ruby/Enumerable/max)
    def self.most_patients 
        # self.all.max { |vet1, vet2| vet1.patients.length <=> vet2.patients.length}
        self.all.max_by {|v| v.patients.length}
    end 

    # Instance Methods

    # Return a collection of a Vet's Patients whose ages are greater than 9
    # Hint => .where() (https://apidock.com/rails/ActiveRecord/QueryMethods/where)
    def find_old_patients
        self.patients.where("age > 9")
        # self.patients.where("age > ?", 9)
    end

    # Return a collection of a Vet's Patients' names and numbers
    # Hint => .pluck() (https://apidock.com/rails/ActiveRecord/Calculations/pluck)
    def list_names_and_numbers
        self.patients.pluck(:name, :phone)
    end
    
    # Return a Vet's oldest Patient's age
    # Hint => .maximum() (https://apidock.com/rails/ActiveRecord/Calculations/ClassMethods/maximum)
    def find_oldest_patient
        self.patients.maximum("age") #this returns the age of the oldest patient of a specific vet
        # self.patients.maximum(:age) #this also works

        # oldest_patient = self.patients.max_by { |p| p.age }.age
        # oldest_patient.age
    end 
end 