require 'test/unit'

def GDCDiv(a,b)

    while b != 0

       a, b = b, a % b

    end

    a 
end

def GDCSub(a,b)

    while a != b
 
          if a > b
             a = a - b
          end 

          if a < b
             b = b - a
          end 
          
    end

    a 
end

def GDCRec(a,b)

    if b == 0

       return a

    else

       return GDCRec(b, a % b)

    end
end

class EuclidN

      def initialize( arr )  

          @vec = arr 
          @n = arr.size
      end 

      def _euclidN(lo, hi)

          if lo == hi
             return @vec[ lo ]
          end  
          mi = (lo+hi)>>1
          return _euclid(_euclidN(lo, mi), _euclidN(mi+1, hi))
      end 

      def _euclid(a, b)

           while b != 0
             a, b = b, a % b
           end
           a 
      end

      def run

          _euclidN(0, @n - 1) 
      end

end      

class TestSimpleNumber < Test::Unit::TestCase
 
  def test_simple

      ob = EuclidN.new([10,4])

      assert_equal(2, ob.run())

  end
 
end


