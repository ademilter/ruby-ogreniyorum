#user_name = "vigo"
#user_age = 43

#puts "#{user_name} #{user_age} yaşında"



def print_user_detail(name, age)
#  if age.kind_of?(Fixnum)
#    return "#{name} #{age} yaşında, emeklilik yaşın #{age+10}"
#  else
#    return "Lütfen #{age} sayısal olsun"
#  end
  return "Error" unless age.kind_of?(Fixnum)
#  return "#{name} #{age} yaşında, emeklilik yaşın #{age+10}"
  return "%s %d yaşında" % [name, age]
end


# puts print_user_detail
# puts print_user_detail("Adem", 29)

a = 5
#if a == 5
#  print "vigo"
#end

#print "vigo" if a == 5

# puts "vigo", "leog", "foo"

# puts print_user_detail("a", 3)
# p print_user_detail("a", 1)

