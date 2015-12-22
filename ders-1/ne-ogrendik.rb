# bu yorum satırı
# bu da yorum satırı

=begin
daha
fazla
satırlı
yorum
=end


# //////////////////////////////////////////////
# Degiskenler

name = "Adem"
age = 29

puts "#{name}, #{age} yaşında. seneye #{age + 1} olacak"
# veya
puts "%s, %s yaşında" % [name, age]


# //////////////////////////////////////////////
# Method (Fonksiyon)

def method_name1
  "bu satır calisir"
  "sonra bu satır"
  "en son satır return eder"  #return yazılmadığı durumda son satır return eder
end

puts method_name1


# //////////////////////////////////////////////
# Method(argumans)

def method_name2(arg1, arg2)
  arg1 + arg2
end

puts method_name2 2, 5


# //////////////////////////////////////////////
# Method(argumans) 2

def method_name3 arg1, arg2 
  arg1 + arg2
end

puts method_name3 4, 1


# //////////////////////////////////////////////
# Local Variable

deger = 12

def method_name4 arg1, arg2, deger
  puts arg1 + arg2 + deger
  deger = 2
  puts arg2 + deger
end

method_name4 3, 8, deger


# //////////////////////////////////////////////
# Global Variable

$deger = 12

def method_name5 arg1, arg2
  puts arg1 + arg2 + $deger
  $deger = 2
  puts arg2 + $deger
end

method_name5 3, 8
puts $deger