class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end
  
  def sides_greater_than_zero
    if @a > 0 && @b > 0 && @c > 0
      true
    else
      false
    end
  end

  def triangle_inequality
    (@a + @b) > @c && (@a + @c) > @b && (@c + @b) > @a
  end

  def valid_triangle
    raise TriangleError unless sides_greater_than_zero && triangle_inequality
  end
    
  class TriangleError < StandardError
  end

end
