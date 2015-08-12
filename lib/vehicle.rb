class Vehicle
  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
  end


  define_method(:age) do
    current_year = Time.new().year()
    current_year.-(@year)
  end
end
