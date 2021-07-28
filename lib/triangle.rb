class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    self.a = a
    self.b = b
    self.c = c
  end

  def kind
    if (a + b > c && a + c > b && b + c > a) && (a > 0 && b > 0 && c > 0)
      if (a == b && b == c || b == c && a == b || c == a && a == b)
        :equilateral
      elsif (a == b && a != c || a == c && a != b || b == c && b != a)
        :isosceles
      else
        :scalene
      end
    else
        raise TriangleError
    end
  end

  class TriangleError < StandardError
    "thats wrong"
  end
end
