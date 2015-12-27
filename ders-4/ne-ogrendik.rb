# //////////////////////////////////////////////
# String (detaylı inceleme)
# //////////////////////////////////////////////


m = ""
m # => ""
m.class # => String
m.instance_of?(String) # => true


# ---------------


m << 65
m # => "A"

m << 66
m # => "AB"


# ---------------


m.class == "mm".class # => true


# ---------------


"öz" "yıl" "maz" "el" # => "özyılmazel"

def puts_c(*args)
  args.join("") # => "özyılmazel"
end

puts_c "öz", "yıl", "maz", "el"


# ---------------


%{Bu işlemlerin %80'i "uydurma"} # => "Bu işlemlerin %80'i \"uydurma\""

%|Merhaba Dünya Ben vigo nasılsınız?|  # => "Merhaba Dünya Ben vigo nasılsınız?"

%w{ali veli adem vigo} # => ["ali", "veli", "adem", "vigo"]
# veya
["ali", "veli", "adem", "vigo"] # => ["ali", "veli", "adem", "vigo"]


# ---------------


1234 # => 1234
1_234 # => 1234
1_987_345 # => 1987345
# mükemmel bir atlayış !!!!


# ---------------


puts %x{cd $HOME/Dotfiles; git log}
# veya
puts `cd $HOME/Dotfiles; git log`


# ---------------


name = "Adem"
mesaj = <<SON
Merhaba nasılsınız? Biz de çok iyiyiz #{name}
Görüşürüz!
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
SON

# END'i gördüğün yere kadar oku, bunu string olarak algıla.
# html'deki pre gibi çalışır. satır başlarına ve indent'e dikkat eder.

mesaj # => "Merhaba nasılsınız? Biz de çok iyiyiz Adem\nGörüşürüz!\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n"


# ---------------


cities  = %w[ London
              Oslo
              Paris
              Amsterdam
              Berlin ]
cities # => ["London", "Oslo", "Paris", "Amsterdam", "Berlin"]


visited = %w[Berlin Oslo]
visited # => ["Berlin", "Oslo"]


result = "I still need " +
          "to visit the " +
          "following cities:",
          cities - visited
result # => ["I still need to visit the following cities:", ["London", "Paris", "Amsterdam"]]


# ---------------


mesaj = [<<BİR, <<İKİ, <<ÜÇ]
  Bu Bir
BİR
  Bu iki....
İKİ
  Bu da üüüüüüüüç
ÜÇ

mesaj # => ["  Bu Bir\n", "  Bu iki....\n", "  Bu da üüüüüüüüç\n"]


# ---------------


"Sayı: %010d" % 2014 # => "Sayı: 0000002014"
# 10 basamaklı sayı haline getir ama eksik kısımları 0 ile doldur

"Sayı: %5d" % 2015 # => "Sayı:  2015"
# bos karakter bırakır


# ---------------


user_fullname = "Adem İlter"
user_fullname = user_fullname + " Designer" # => "Adem İlter Designer"
user_fullname.concat(" Designer") # => "Adem İlter Designer Designer"
user_fullname.concat(33) # => "Adem İlter Designer Designer!"

# ---------------


"Saat tam 4'de buluşalım"[9] # => "4"
"Saat tam 4'de buluşalım"[2..11] # => "at tam 4'd"
"Saat tam 4'de buluşalım"[-6..-1] # => "uşalım"


# ---------------


z = "Merhaba Dünya"
z["vigo"] # => nil
z["haba"] # => "haba"


# ---------------


m = "merhaba dünya"
m.capitalize # => "Merhaba dünya"
m # => "merhaba dünya"

m.capitalize! # => "Merhaba dünya"
m # => "Merhaba dünya"


# ---------------


x = "Merhaba"
x.clear # => ""
x # => ""


# ---------------


"a".next # => "b"
"abc".next # => "abd"
"abcde".next # => "abcdf"

6.next # => 7
1898.next # => 1899


# ---------------


" !ABC".getbyte(0) # => 32
" !ABC".getbyte(1) # => 33

"!".ord # => 33
"A".ord # => 65

"0xff0000".hex # => 16711680


# ---------------


"merhaba".insert(0, "Adem ") # => "Adem merhaba"


# ---------------


kufur = "ffffffffffuuuuuuuuuuuuuuuccccccccccccckkkkkkkkkkkkkk"
kufur.squeeze # => "fuck"
kufur.squeeze.tr("uc", "*") # => "f**k"