class Bkt

      def initialize(_n)

          @n = _n

          @level = 0 

          @stack = [0]*(@n+1)

          self.back

      end                      

      def init

         @stack[@level] = 0

      end    

      def print

          p @stack[1..-1]

      end 

      def sol

          return @level == @n

      end

      def succ

          if @stack[@level] < @n

             @stack[@level] +=1

             return 1
          end

          return 0
      end   

      def valid

          for i in 1..@level - 1

              if @stack[@level] == @stack[i]

                 return 0

              end
          end

          return 1 
      end
      
      def back

          @level = 1

          self.init

          while @level > 0 do

                hs = 1

                iv = 0

                while hs==1 && iv==0 do

                      hs = self.succ

                      if hs

                         iv = self.valid

                      end 

                end     

                if hs == 1

                   if self.sol

                      self.print                        

                   else

                      @level = @level + 1 

                      self.init()  

                   end 

                else

                   @level = @level - 1 

                end
          end
                      
           
       end 

end

class Perm < Bkt 

      def initialize(_n)

          super(_n) 

      end  
end

p = Perm.new(3)
