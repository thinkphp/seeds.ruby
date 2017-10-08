#
# Adrian Statescu <mergesortv@gmail.com>
#
# Euclid's Algorithm implemented in Ruby language for an array of integers
#     
#    Find using            - Divide et Impera 
#                          - Recursion

require 'test/unit'

class Euclid

      def initialize( vec )

          @arr = vec
          @n = vec.size

      end

      def euclid_div(a, b)

          while b != 0
                a, b = b, a % b
          end

          a 
      end

      def euclid_sub(a, b)

          while a != b

                if a > b
                   a = a - b 
                end
                if b > a
                   b = b - a
                end
                a  
          end  
      end

      def euclid_rec(a, b)

          if b == 0
             a 
          else
             euclid_rec(b, a % b)
          end 

      end

      def EuclidDivideEtImpera(lo, hi)

          if lo < hi      

              mi = (lo+hi)>>1

              return euclid_div(EuclidDivideEtImpera(lo, mi), EuclidDivideEtImpera(mi + 1, hi))

           end

           return @arr[ lo ] 
      end 

      def run

          self.EuclidDivideEtImpera(0, @n - 1)
      end


      def EuclidRecursion( len )

          if len == 1

             return @arr[ 0 ]

          else

             return euclid_div(EuclidRecursion(len - 1), @arr[len - 1])

          end

      end 

      def run2

          EuclidRecursion( @n )
      end 

end


class TestSimpleNumber < Test::Unit::TestCase
 
  def test_simple

      ob = Euclid.new([10,100,20])
      assert_equal(10, ob.run)
      assert_equal(10, ob.run2)
  end

end

  ob = Euclid.new([10,100,20])
  p ob.run
  p ob.run2