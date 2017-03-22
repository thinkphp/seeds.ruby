#
# Adrian Statescu <mergesortv@gmail.com> http://adrianstatescu.com
# Number's Euler e = 2.7182...
# MIT License
# 

def fact n
    if n == 0
       1 
    else
       n * fact(n - 1)
    end 
end

def e
    i = 2
    eps = 0.00001 
    term1, term2 = 1.0, 1.0 + 1.0/fact(1) 
    loop do
         term1 = term2
         term2 += 1.0/fact(i).to_f 
         i = i + 1
         break if (term1 > term2 ? term1 - term2 : term2 - term1) <= eps
    end
    term2
end

p e