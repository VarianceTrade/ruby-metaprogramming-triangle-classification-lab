class Triangle
  def initialize(side_1, side_2, side_3)
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
  end

  def kind
    

    # check for negative side lengths
    if @side_1 < 0 || @side_2 < 0 || @side_3 < 0
      raise TriangleError
    end

    # check 1 for tri inequality
    if (@side_1 + @side_2) <= @side_3
      raise TriangleError
    end

    if (@side_2 + @side_3) <= @side_1
      raise TriangleError
    end

    if (@side_1 + @side_3) <= @side_2
      raise TriangleError
    end

    if @side_1 == @side_2 && @side_1 == @side_3
      if (@side_1 == 0) then raise TriangleError end
      return :equilateral

    elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
      return :scalene
    else
      return :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "Illegal Triangle"
    end
  end
end
