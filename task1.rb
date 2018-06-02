n = ARGV[0].to_s
if (n.length >=1) && (n.length <=10000)
  puts n.delete("рРкКнН")
end