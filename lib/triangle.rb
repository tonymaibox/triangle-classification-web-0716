require 'pry'

class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
  	@kind = [side1, side2, side3]
  end

  def kind
  	if @kind.any? {|side| side <= 0}
  		raise TriangleError
  	elsif @kind[0] + @kind[1] <= @kind[2]
  		raise TriangleError
  	 elsif @kind[1] + @kind[2] <= @kind[0]
  		raise TriangleError
   	elsif @kind[2] + @kind[0] <= @kind[1]
  		raise TriangleError
  	else
	  	if ((@kind[0] == @kind[1]) && (@kind[0] == @kind[2]) && (@kind[1] == @kind[2]))
		    return :equilateral
		  elsif ((@kind[0] == @kind[1]) || (@kind[0] == @kind[2]) || (@kind[1] == @kind[2]))
		    return :isosceles
		  else
		    return :scalene
		  end
		end
	end

end

class TriangleError < StandardError

end