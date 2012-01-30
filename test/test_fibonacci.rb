require 'helper'

class TestFibonacci < Test::Unit::TestCase
  should "return the nearest fibonacci number LESS than itself" do
    
    #Testing on random number
    assert 142.closest_fibonacci == 89 #The fibonacci number which is actually closest is 144
    
    #Testing on maximum fixnum
    FIXNUM_MAX = (2**(0.size * 8 -2) -1)
    assert FIXNUM_MAX.closest_fibonacci == 2880067194370816120 
  end
  
  should "return 0 for invalid input" do
    assert   0.closest_fibonacci == 0
    assert -20.closest_fibonacci == 0
  end
end
