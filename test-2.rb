$basket = []
$products = [
  {id: 1, name: "Cinema Display 27inc", price: 3200},
  {id: 2, name: "Magic Mouse", price: 220},
  {id: 3, name: "Macbook Pro 17inc - 512SSD", price: 6400},
  {id: 4, name: "iPad Mini - 128GB", price: 1800},
  {id: 5, name: "iPhone 6s - 128GB", price: 3400}
]

# ÜRÜN EKLE
def add_to_basket product_id
  $basket << $products.select do |product| 
    product[:id] == product_id
  end.first
end

# ÜRÜNÜ SİL
def remove_from_basket product_id
  $basket.delete_if do |product| 
    product[:id] == product_id
  end
end

# TOPLAM TUTAR
def total_price
  total = 0
  $basket.each do |product| 
    total += product[:price]
  end
  "Toplam tutar: #{total}"
end

# EN PAHALI ÜRÜN
def find_most_expensive_product_in_basket
  $basket.max_by{|product| product[:price]}
end


#------------------------------------------


# 2 urun ekliyoruz
# ------------------------
add_to_basket(1)
add_to_basket(3)
$basket # => [{:id=>1, :name=>"Cinema Display 27inc", :price=>3200}, {:id=>3, :name=>"Macbook Pro 17inc - 512SSD", :price=>6400}]


# mevcut tutar
# ------------------------
total_price # => "Toplam tutar: 9600"


# # 1 ürün daha ekliyoruz
# ------------------------
add_to_basket(5)
$basket # => [{:id=>1, :name=>"Cinema Display 27inc", :price=>3200}, {:id=>3, :name=>"Macbook Pro 17inc - 512SSD", :price=>6400}, {:id=>5, :name=>"iPhone 6s - 128GB", :price=>3400}]


# mevcut tutar
# ------------------------
total_price # => "Toplam tutar: 13000"


# omg çok pahalı oldu. en pahalısını çıkaralım lütfen!
# ------------------------
remove_from_basket(find_most_expensive_product_in_basket[:id]) # => [{:id=>1, :name=>"Cinema Display 27inc", :price=>3200}, {:id=>5, :name=>"iPhone 6s - 128GB", :price=>3400}]
$basket # => [{:id=>1, :name=>"Cinema Display 27inc", :price=>3200}, {:id=>5, :name=>"iPhone 6s - 128GB", :price=>3400}]