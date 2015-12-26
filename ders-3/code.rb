# a = 5
# if a > 2
#   puts "a, 2'den büyük"
# end
# 
# puts "a, 2'den büyük" if a > 2

# a = 5
# a.class # => Fixnum
# 
# a = "Hello"
# a.class # => String
# 
# a = [1]
# a.class # => Array

# def merhaba
#   "Merhaba"
# end
# merhaba # => "Merhaba"
# undef merhaba



# 1 and 1 = true
# 1 and 0 = false
# 0 and 1 = false
# 0 and 0 = false
# (a and b and c and d and f and) = true?

# 1 or 1 = true
# 0 or 1 = true
# 1 or 0 = true
# 0 or 0 = false

# a = 1
# b = 2
# if a == b
#   puts "a, b'ye eşit"
# elsif a < b
#   puts "a, b'den küçük"
# elsif a > b
#   puts "a, b'den büyük"
# else
#   puts "a, b'ten büyük"
# end


# a = 0
# b = 2
# 
# # puts "a 2'den büyük" if a > 2
# # 
# # puts "a 2'den büyük değil" if not a > 2
# puts "a 2'den büyük değil" unless a > 2
# puts "a 2'den büyük değil" unless a > 2
# 

# 
# if KOŞUL
#   ....
# end
# 
# if not KOŞUL
# end
# 
# unless KOŞUL
#   ....
# end
# 
# sonuç unless KOŞUL

# a = 5
# b = 3
# 
# puts "eşit değil" if a != b
# puts "eşit değil" unless a == b


# i = 0
# while i < 5 do
#   puts "i = #{i}"
#   i += 1
# end
# 
# puts "-----------------------"
# 
# i = 0
# until i == 5 do
#   puts "i = #{i}"
#   i += 1
# end


# computer = "c16"
# year = case computer
#            when "c64" then "1982"
#            when "c16" then "1984"
#            when "amiga" then "1985"
#        else
#            "Tarih bilinmiyor"
# end
# 
# puts "#{computer} çıkış yılı #{year}"


# def test_met
#   return "hello"
#   return "world"
# end
# 
# puts test_met


# student_grade = 8
# case student_grade
#       when 0
#         puts "Çok kötü"
#       when 1..4
#         puts "Başarısız"
#       when 5..7
#         puts "İyi"
#       when 8..9
#         puts "Çok İyi"
#       when 10
#         puts "Süper"
# end



a = 1..10
a.class # => Range
a.class.superclass.superclass # => BasicObject
a.methods # => [:==, :===, :eql?, :hash, :each, :step, :bsearch, :begin, :end, :first, :last, :min, :max, :size, :to_s, :inspect, :exclude_end?, :member?, :include?, :cover?, :to_a, :entries, :to_h, :sort, :sort_by, :grep, :count, :find, :detect, :find_index, :find_all, :select, :reject, :collect, :map, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :all?, :any?, :one?, :none?, :minmax, :min_by, :max_by, :minmax_by, :each_with_index, :reverse_each, :each_entry, :each_slice, :each_cons, :each_with_object, :zip, :take, :take_while, :drop, :drop_while, :cycle, :chunk, :slice_before, :slice_after, :slice_when, :lazy, :nil?, :=~, :!~, :<=>, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
# :begin, :end, :first, :last, :min, :max, :size, :to_s, 
# :inspect, :exclude_end?, :member?, :include?, :cover?, :to_a, :entries, 
# :to_h, :sort, :sort_by, :grep, :count, :find, :detect, :find_index, 
# :find_all, :select, :reject, :collect, :map, :flat_map, :collect_concat, 
# :inject, :reduce, :partition, :group_by, :all?, :any?, :one?, :none?, 
# :minmax, :min_by, :max_by, :minmax_by, :each_with_index, :reverse_each, 
# :each_entry, :each_slice, :each_cons, :each_with_object, :zip, :take, 
# :take_while, :drop, :drop_while, :cycle, :chunk, :slice_before, :slice_after, 
# :slice_when, :lazy, :nil?, :=~, :!~, :<=>, :class, :singleton_class, :clone, 
# :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, 
# :freeze, :frozen?, :methods, :singleton_methods, :protected_methods, 
# :private_methods, :public_methods, :instance_variables, :instance_variable_get, 
# :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, 
# :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

a.first # => 1
a.last # => 10
a.to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# { 'a'=>1, 'b'=>2, 'c'=>3 }.to_a.flatten # => ["a", 1, "b", 2, "c", 3]
# { 'a'=>1, 'b'=>2, 'c'=>3 }.flatten # => ["a", 1, "b", 2, "c", 3]

# for i in 1..10
#   puts "i = a#{i}"
# end

# r = 1..10
# my_array = r.to_a.map{ |i| "a#{i}"}
# my_array # => ["a1", "a2", "a3", "a4", "a5", "a6", "a7", "a8", "a9", "a10"]

# ('a'..'e') # => "a".."e"
# ('a'..'e').to_a # => ["a", "b", "c", "d", "e"]
# ('a'..'e').to_a.join # => "abcde"

# ("a".."z").cover?("c") # => true
# ("e".."z").cover?("c") # => false

# a = 5
# "Merhaba #{a}" # => "Merhaba 5"
# 'Merhaba #{a}' # => "Merhaba \#{a}"


# a1..a10
# ["a1", "a2", "a3"]



# amount = 2
# pluralize = amount == 1 ? "apple" : "apples"
# "#{amount} #{pluralize}." # => "2 apples."

# KOŞUL ? TRUE : FALSE