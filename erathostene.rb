
class Erathostene

      def initialize(n)
          @n = n
          @sita = [1]*500001
          run
      end

      def run

          for i in 2..Math.sqrt(@n)
           
              if @sita[i] == 1

                 j = 2

                 while i * j <= @n do   

                     @sita[i*j] = 0

                     j = j + 1

                 end
 
              end     
          end
      end 
      
      def print

          for i in 2..@n
              if @sita[i] == 1
                 p i
              end  
          end
      end
end

prime = Erathostene.new(200)
prime.print