class Triangle
  # write code here
  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind 
    is_greater_than_zero = side1 > 0 && side2 > 0 && side3 > 0
    is_triangle = side1 < side2 + side3 && side2 < side1 + side3 && side3 < side2 + side1 

    if is_triangle && is_greater_than_zero
      if side1 == side2 && side1 == side3
        :equilateral
      elsif side1 != side2 && side2 != side3 && side1 != side3
        :scalene
      else
        :isosceles
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "All sides must be greater than 0, and follow the principle known as triangle inequality."
    end
  end
end
