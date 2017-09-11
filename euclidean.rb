require 'test/unit'

def gdc_iter(a, b)

    while b != 0 do 
     
          a, b = b, a % b
    end

    a
end

def gdc_rec(a, b)

    b == 0 ? a : gdc_rec(b, a % b) 

end

def gdc_substraction(a, b)

    while a != b do

           a = a - b if a > b

           b = b - a if b > a
    end

    a 
end

class TestSimpleNumber < Test::Unit::TestCase
 
  def test_simple

      assert_equal(2, gdc_iter(10,4))
      assert_equal(1, gdc_rec(10,3))
      assert_equal(1, gdc_substraction(10,3))

  end
 
end

