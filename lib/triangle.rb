class Triangle
  attr_accessor :x, :y, :z, :kind
   def initialize(x, y, z)
      @x = x
      @y = y 
      @z = z 
   end
   
   def kind 
     if (x + y) <= z || (y + z) <= x || (z + x) <= y 
       
       raise TriangleError
       
       elsif x == y && x == z 
       self.kind = :equilateral
       
       elsif x == y || x == z || y == z
       self.kind = :isosceles
       
     else 
       self.kind = :scalene
       
   end
 end
   
   class TriangleError < StandardError 
     #Triangle error code 
end
   

end

