class Triangle


      class TriangleError < StandardError
        "You done messed up"
      end

  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind()
    #error checking
  if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
    raise TriangleError
  elsif (@side_1 + @side_2 <= @side_3) || (@side_1 + @side_3 <= @side_2) || (@side_2 + @side_3 <= @side_1)
    raise TriangleError
  else #types of triangles
    if (@side_1 == @side_2) && (@side_1 == @side_3)
      :equilateral
    elsif (@side_1 == @side_2) || (@side_2 == @side_3 )|| (@side_3 == @side_1)
      :isosceles
    elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_3 != @side_1)
      :scalene
    end
  end
end
end
