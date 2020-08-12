class Triangle
  attr_accessor :x, :y, :z
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
   end
 end
   
   class TriangleError < StandardError 
     #Triangle error code 
end
   

end

