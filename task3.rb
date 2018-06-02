a = ARGV[0].to_i
b = ARGV[1].to_i
if (a >=1) && (b<=100000) && (b>=0)
  r = a+b
  s = r % 60
  r = r / 60
  m = r % 60
  h = r / 60
  str = ''
  str += h.to_s+' час ' if h==1
  str += h.to_s+' часа ' if (h>1)&&(h<5)
  str += h.to_s+' часов ' if h>4
  str += m.to_s+' минута ' if m==1
  str += m.to_s+' минуты ' if (m>1)&&(m<5)
  str += m.to_s+' минут ' if m>4
  str += s.to_s+' секунда' if s==1
  str += s.to_s+' секунды' if (s>1)&&(s<5)
  str += s.to_s+' секунд' if s>4
  puts str
end