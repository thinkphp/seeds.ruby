def f(n)

    n==0 ? 1: 1.upto(n).inject(:*)

end

def p(x,y)

   i=1

   return 1 if y==0 

   y.times {i *= x}
i

end


def s(x,n)

    a = 0.0

    for k in 0...n
 
        a += p(-1,k) * p(x.to_f, 1+2*k)/f(1+2*k)

    end

    a.round(8)
end

def c(x,n)

    a= 0.0

    for k in 0...n

    a +=p(-1,k) * p(x.to_f, 2*k)/f(2*k)

    end

    a.round(8)
end

x = gets.chomp
n = gets.chomp.to_i

puts s(x,n), c(x,n)

