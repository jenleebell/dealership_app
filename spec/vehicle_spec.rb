require('rspec')
require('vehicle')

  describe('Vehicle') do
    before() do
      Vehicle.clear()
    end


  describe("#age") do
    it("returns the vehicle's age") do
      test_vehicle = Vehicle.new("Toyota","Prius",2000)
      expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe(".all") do
    it("selects all of the saved vehicles") do
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a vehicle to the array of saved vehicles") do
      test_vehicle = Vehicle.new("Toyota","Prius",2000)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe(".clear") do
    it("empties out of the saved vehicles") do
      test_vehicle = Vehicle.new("Toyota","Prius",2000).save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end

  describe("#make") do
    it("returns the make of the vehicle") do
      test_vehicle = Vehicle.new("Toyota","Prius",2000)
      test_vehicle.save()
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end


end
