for i in 0 ..100

  if i%3==0
    puts "#{i}, fuzz"
  elsif i%5==0
    puts "#{i} big"
  end
end