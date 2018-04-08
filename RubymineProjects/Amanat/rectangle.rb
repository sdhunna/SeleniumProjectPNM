class Rectangle
def initialize (length , breath)
  @length=length
  @breath=breath
end
  def parimeter
    2*(@breath +@length)
  end
  def area
    @length*@breath
  end
end
rect = Rectangle.new(10,20)
puts rect.area
puts rect.parimeter