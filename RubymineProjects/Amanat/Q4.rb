
=begin arr = [1, 2, 3,3,1,9, 4, 5, 6]
number= 3


if arr.include?(number)
 puts "yes"
else
  puts " no "
end

#how to return example
arr = [["test", "hello", "world"],["example", "mem"]]

puts arr.last.first
=end
#a=[1,3,14,5,6,17,8,9]

#puts a.sort.reverse

i=[2,3,4,5,6]

a=0
b=i.length-1

while a<b do
  first= i[a]
  last=i[b]

  i[a]=last
  i[b]=first
  a=a+1
  b=b-1

end
puts i