# Add necessary Patient Class logic here! (See Activity.md)

class Patient
    @@all = []

    #read only
    attr_reader :id
    #read / write
    attr_accessor :species, :age, :name, :owner, :phone

    def initialize (id, species, age, name, owner, phone)
        #read only
        @id = id

        #read / write
        @species = species
        @age = age
        @name = name
        @owner = owner
        @phone = phone

        @@all << self
    end

    def self.all
        @@all
    end

    # ## this is repetative. att_accessor is a shorter way to do this
    # # getter
    # def name
    #     @name
    # end

    # #setter
    # def name=(name)
    #     @name = name
    # end

end