class Fixnum
  def closest_fibonacci
    a, b = 0, 1
    a, b = b, a+b while b < self
    a
  end
end