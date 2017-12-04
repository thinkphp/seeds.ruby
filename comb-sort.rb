def combsort(arr, compare = lambda{|a,b| a<=>b})

    gap,n = arr.length, arr.length

    shrinkFactor = 1.3

    swapped = false
    
    while gap > 1 || swapped

          if gap > 1

             gap = (gap / shrinkFactor).floor

          end 

          swapped = false

          i = 0

          while gap + i < n

                   if compare.call(arr[i] , arr[i+gap]) > 0

                       arr[i],arr[i+gap] = arr[i+gap],arr[i] 

                       swapped = true

                    end  

                    i+=1    
          end 
    end 
    arr
end

arr = [8,7,6,5,4,3,2,1]

print combsort(arr)