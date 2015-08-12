require('rspec')
require('vehicle')

  describe('Vehicle') do
  #   before() do
  #     Vehicle.clear()
  #   end

  describe("#make") do
    it("returns the make of the vehicle") do
      test_vehicle = Vehicle.new("Toyota","Prius",2000)
      # test_vehicle.save()
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe("#age") do
    it("returns the vehicle's age") do
      test_vehicle = Vehicle.new("Toyota","Prius",2000)
      expect(test_vehicle.age()).to(eq(15))
    end
  end

end
