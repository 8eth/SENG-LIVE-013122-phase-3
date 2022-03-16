class Patient
    attr_reader :id
    attr_accessor :species, :age, :name, :owner, :phone

    @@all = []

    # Public / Private Method?
    def initialize(species, age, name, owner, phone)
        @id  = @@all.length + 1
        @species = species
        @age = age
        @name = name
        @owner = owner
        @phone = phone

        # binding.pry

        add_self
    end

    # Class method (Patient.all)
    # self => Patient class
    def self.all
        @@all
    end

    def self.all_species
        @@all.map {|patient| patient.species}.uniq
    end

    def self.find_patient (name, owner)
        #self.all this is the same as @@all
        #Patient.all this is the same as @@all
        @@all.find { |patient| patient.name == name && patient.owner == owner}
    end

#    def delete_patient

#    end

    # Instance method (new_patient.give_name)
    def give_name
        @name
    end

    private

    def add_self
        # self => new Patient instance
        @@all << self
    end
end