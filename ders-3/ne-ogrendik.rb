# //////////////////////////////////////////////
# If ve Unles
# //////////////////////////////////////////////

a = 1
b = 2
$w

if a == b
  $w = "a, b'ye eşit"
elsif a < b
  $w = "a, b'den küçük"
elsif a > b
  $w = "a, b'den büyük"
else
  $w = "a, b'ten büyük"
end

$w # => "a, b'den küçük"


d = "a 2'den büyük" if 3 > 2
d # => "a 2'den büyük"

d = "a 2'den büyük değil" unless 1 > 2
d # => "a 2'den büyük değil"


1 and 1 # => 1
1 and 0 # => 0
0 and 1 # => 1
0 and 0 # => 0
(a and b and false) == true # => false

1 or 1 # => 1
0 or 1 # => 0
1 or 0 # => 1
0 or 0 # => 0


# //////////////////////////////////////////////
# While ve Until
# //////////////////////////////////////////////

i = 0

while i < 5 do
  puts "i = #{i}"
  i += 1
end


puts "-----------------------"


i = 0

until i == 5 do
  puts "i = #{i}"
  i += 1
end


# //////////////////////////////////////////////
# Switch Case
# //////////////////////////////////////////////

computer = "c16"

year = case computer 
  when "c64" then "1982" 
  when "c16" then "1984" 
  when "amiga" then "1985"
else "Tarih bilinmiyor"
end

puts "#{computer} çıkış yılı #{year}"


puts "-----------------------"


student_grade = 8

case student_grade
  when 0
    puts "Çok kötü"
  when 1..4
    puts "Başarısız"
  when 5..7
    puts "İyi"
  when 8..9
    puts "Çok İyi"
  when 10
    puts "Süper"
end


# //////////////////////////////////////////////
# Range
# //////////////////////////////////////////////

a = 1..10
a # => 1..10
a.class # => Range
a.first # => 1
a.last # => 10
a.to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# -----------------

for i in 1..10
  puts "i = a#{i}"
end

# -----------------

('a'..'e') # => "a".."e"
('a'..'e').to_a # => ["a", "b", "c", "d", "e"]
('a'..'e').to_a.join # => "abcde"

# -----------------

r = 1..10
my_array = r.to_a.map{ |i| "a#{i}"} # !> shadowing outer local variable - i
my_array # => ["a1", "a2", "a3", "a4", "a5", "a6", "a7", "a8", "a9", "a10"]
