class Vehicle
  @@all_vehicles = []

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
    @id = @@all_vehicles.length().+(1)
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_method(:id) do
    @id
  end

  define_method(:age) do
    current_year = Time.new().year()
    age = current_year.-(@year)
  end

  define_singleton_method(:clear) do
    @@all_vehicles = []
  end

  define_singleton_method(:all) do
    @@all_vehicles
  end

  define_singleton_method(:find) do |identification|
    found_vehicle = nil
    @@all_vehicles.each() do |vehicle|
      if vehicle.id().eql?(identification.to_i())
        found_vehicle = vehicle
      end
    end
    found_vehicle
  end

  define_method(:save) do
    @@all_vehicles.push(self)
  end

end
