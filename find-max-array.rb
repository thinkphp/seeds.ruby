require 'test/unit'

class MaxN

      def initialize(vec)

          @arr = vec
          @len = vec.size

      end

      def max(a, b)
          a > b ? a : b 
      end 

      def divideEtImpera(lo, hi) 

          if lo == hi

             return @arr[ lo ]

          else

             m = (lo+hi)>>1     

             self.max(divideEtImpera(lo, m), divideEtImpera(m + 1, hi))

          end
         
      end 

      def find

          self.divideEtImpera(0, @len - 1)
      end

      def findUsingRecursion(len)
 
          if len == 1

             @arr[ 0 ]
          else

             self.max(findUsingRecursion(len-1), @arr[len-1]) 
          end

      end

      def find2
          self.findUsingRecursion(@len)
      end

      def findIterative
          tmp = @arr[0]
          for i in 1..@len-1
              if @arr[i] > tmp
                  tmp = @arr[i]
              end 
          end
          tmp
      end

      def find3
          self.findIterative
      end

end

arr = [10, 20, 44, 55, 1, 2, 3, 5]

class TestSimpleNumber < Test::Unit::TestCase
 
  def test_simple

      arr = [10, 20, 44, 55, 1, 2, 3, 5]
      max = MaxN.new(arr)      

      assert_equal(55, max.find)
      assert_equal(55, max.find2)
      assert_equal(55, max.find3)

  end
 
end

max = MaxN.new(arr)
p max.find
p max.find2
p max.find3