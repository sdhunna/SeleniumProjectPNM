

1.upto(100) do |i|
  if i%5==0 and i%3==0
    puts " #{i} fuzzbuzz"
    elsif i%5==0
    puts "#{i} Zip"
  elsif i%3==0
    puts "#{i} Deep"
  end
end

