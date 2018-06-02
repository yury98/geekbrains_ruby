a = ARGV[0].to_s
b = ARGV[1].to_s
i=0
if (a.length >=1) && (b.length<=10000)
  a1=a
  a2 =a
  a.length.times do
    a1 = a1.chars.rotate(1).join
    i+=1
    break if a1==b
  end
  c=i
  i=0
  a.length.times do
    a2 = a2.chars.rotate(-1).join
    i+=1
    break if a2==b
  end
  d=i
  puts c if c<d
  puts d if (d<=c) && (d!=a.length)
  puts -1 if (d==a.length) && (c==a.length)
end