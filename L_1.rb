b=ARGV[0].to_i

def nod(a,b)
  while a!=0 and b!=0
    if a>b
      a=a%b
    else
      b=b%a
    end
  end
  return a+b
end
def max_nod(b)
  max = 0
  col = 0
  for i in (1..b)
    if nod(i,b)!= 1 and i>max 
      max = i
    end 
  end
  return max
end
def sum_ch_mp(b)
  sum = 0
  while b != 0
    if b%10 < 5
      sum += b%10
      b = b/10
      else
      b=b/10
    end
  end
  return sum
end

one=sum_ch_mp(b)
two=max_nod(b)
puts (one*two)
