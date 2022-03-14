$patients = [
    { id: 1, species:"dog", name:"Jack", owner:"John Smith", phone: "999-999-9999"},
    { id: 2, species:"bird", name:"Mia", owner:"Jane Doe", phone: "888-888-8888"},
    { id: 3, species:"cat", name:"Grace", owner:"Louis Medina", phone: "111-111-1111"}
]

$clinics = [
    { id: 1, clinic_name: "Flatiron Veterinary Clinic", address: "111 Hacker Way", phone: "777-777-7777"},
    { id: 2, clinic_name: "Bakersville Veterinary Clinic", address: "222 Hyde Street", phone: "666-666-6666"},
    { id: 2, clinic_name: "Pets R Us", address: "333 Hyde Street", phone: "555-555-5555"}
]

def create_patient
    # prompt the user to input species, name, owner, and phone
    puts "please enter species: "
    patient_species = gets.strip

    puts "please enter name: "
    patient_name = gets.strip

    puts "please enter owner: "
    patient_owner = gets.strip

    puts "please enter phone: "
    patient_phone = gets.strip

    # create a new hash object using inputted values
    new_patient = {
        id: $patients.length + 1,
        species: patient_species,
        name: patient_name,
        owner: patient_owner,
        phone: patient_phone 
    }

    # push new patient hash object to patients
    $patients << new_patient
    puts $patients

end

def initialize_app 
    puts 'welcome to phase-3'

    puts "Welcome to Flatiron Veterinary Clinic" 
    puts "Please Choose an Option:"
    puts "0. Exit"
    puts "1. List All Patients"
    puts "2. List All Clinics"
    puts "3. List Patient Names"
    puts "4. List Clinic Names"
    puts "5. List Clinic Addresses"
    puts "6. Create New Patient"

    # this removes white space from user input
    user_input = gets.strip 

    case user_input
        when "0"
            puts "Goodbye!"

        when "1"
            $patients.each { |patient| puts patient}

        when "2"
            $clinics.each { |clinic| puts clinic}

        when "3"
            $patients.map { |patient| puts patient[:name]}

        when "4"
            $clinics.map { |clinic| puts clinic[:clinic_name]}

        when "5"
            $clinics.map { |clinic| puts clinic[:address]}

        when "6"
            create_patient

    end
end 

