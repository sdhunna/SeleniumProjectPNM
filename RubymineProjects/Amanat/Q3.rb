for i in 1..150 do
  if i%3==0 and i%5==0 and i%7==0
    puts "#{i}  fooZapBar"
  elsif i%3==0 and i%5==0
    puts "#{i} fooBar "
  elsif i%5==0
    puts "#{i} Bar "

    elsif i%3==0
      puts "#{i} Foo"

  elsif i%7==0 and i%3==0

    puts "#{i}  fooZap"
  elsif i%7==0

    puts "#{i} Zap"
  else
    puts i
  end

end