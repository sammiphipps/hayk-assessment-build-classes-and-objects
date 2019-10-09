require "pry"
class Building
    attr_reader :address
    attr_accessor :name, :number_tenants
    @@buildings = []
    def initialize(name, address, number_floors, number_tenants)
        @name = name 
        @address = address
        @number_floors = number_floors
        @number_tenants = number_tenants
        @@buildings << self
    end 
    def placard
        puts "#{@name} is located at #{@address}."
    end 
    def avg_tenants_per_floor
        @number_tenants / @number_floors
    end 
    def self.avg_tenants_per_building
        total_tenants = @@buildings.map{ |building| building.number_tenants}.sum
        total_tenants/@@buildings.count
    end 
end 

building1 = Building.new("Hub", "3601 Walnut St, Denver, CO", 7, 700)
building2 = Building.new("Premier Lofts", "2200 Walnut St, Denver, CO", 8, 800)
building3 = Building.new("Douglas Aprtments", "2300 Walnut St, Denver, CO", 3, 300)
binding.pry