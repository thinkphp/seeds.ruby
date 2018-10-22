class Car
      def initialize(name,color)
          @name = name
          @color = color 
      end

      def display_info
          "Name: #{@name}, and color: #{@color}"
      end 
end

my_car = Car.new("Audi R8","yellow")
