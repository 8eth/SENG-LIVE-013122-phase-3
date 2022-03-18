# Activity #2 => Using Seed Data

# Create two Clinics and five Patients, making sure to associate
# each Patient with one Clinic via the "clinic_id" foreign key.

# Run 'rake db:seed' to add this information to your DB, making sure
# to verify that the DB has been populated with the appropriate resources.

# BONUS => What Rake command would we run to ensure that our DB doesn't 
# contain duplicate data? Add another Clinic and re-seed your DB before confirming 
# that there are no duplicates (i.e., 3 Clinics instead of 5).

# BONUS answer: rakedb:seed:replant

c1 = Clinic.create({clinic_name:"Flatiron Veterinary Clinic", address:"111 Hacker Way", phone:"777-777-7777"})
c2 = Clinic.create({clinic_name:"Bakersville Veterinary Clinic", address:"222 Hyde Street", phone:"555-555-5555"})

Patient.create({species:"dog", name:"Jack", age:2, owner:"John Smith", phone:"999-999-9999", active:true, clinic_id:c1.id})
Patient.create({species:"bird", name:"Mia", age:3, owner:"Jane Doe", phone:"888-888-8888", active:true, clinic_id:c1.id})
Patient.create({species:"cat", name:"Grace", age:4, owner:"Louis", phone:"9777-777-7777", active:true, clinic_id:c2.id})
Patient.create({species:"bird", name:"picard", age:2, owner:"Oz", phone:"999-999-9999", active:true, clinic_id:c2.id})
Patient.create({species:"rabbit", name:"ted", age:1, owner:"Zac", phone:"999-999-9999", active:true, clinic_id:c2.id})

# Confirmation Message
puts 'Seeding complete!'