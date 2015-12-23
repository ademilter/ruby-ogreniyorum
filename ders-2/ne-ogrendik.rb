# //////////////////////////////////////////////
# Array
# //////////////////////////////////////////////

new_array1 = []
# veya
new_array2 = Array.new
# veya
users = ["vigo", "adem", "fka"]
# seklinde tanımlanabilir


# eleman sayısı kontrolü
new_array1.size # => 0
new_array2.size # => 0
users.size # => 3
users.length # => 3
# !! size ile length aynı sonucu verir


#dizi oluştururken eleman sayısı belirtilebilir (default value: nil)
new_array2 = Array.new(10)
new_array2 # => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]


# elemanlara varsayılan deger atanabilir
new_array2 = Array.new(10, "vigo")
new_array2 # => ["vigo", "vigo", "vigo", "vigo", "vigo", "vigo", "vigo", "vigo", "vigo", "vigo"]


# belirli bir elemanı almak için (sırasını bildiğimiz)
users[0] # => "vigo"


# klasik yöntemle son elemanı almak
users[(users.length - 1)] # => "fka"


# Array için kullanılacak bütün methodlar
users.methods # => [:inspect, :to_s, :to_a, :to_ary, :frozen?, :==, :eql?, :hash, :[], :[]=, :at, :fetch, :first, :last, :concat, :<<, :push, :pop, :shift, :unshift, :insert, :each, :each_index, :reverse_each, :length, :size, :empty?, :find_index, :index, :rindex, :join, :reverse, :reverse!, :rotate, :rotate!, :sort, :sort!, :sort_by!, :collect, :collect!, :map, :map!, :select, :select!, :keep_if, :values_at, :delete, :delete_at, :delete_if, :reject, :reject!, :zip, :transpose, :replace, :clear, :fill, :include?, :<=>, :slice, :slice!, :assoc, :rassoc, :+, :*, :-, :&, :|, :uniq, :uniq!, :compact, :compact!, :flatten, :flatten!, :count, :shuffle!, :shuffle, :sample, :cycle, :permutation, :combination, :repeated_permutation, :repeated_combination, :product, :take, :take_while, :drop, :drop_while, :bsearch, :pack, :entries, :sort_by, :grep, :find, :detect, :find_all, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :all?, :any?, :one?, :none?, :min, :max, :minmax, :min_by, :max_by, :minmax_by, :member?, :each_with_index, :each_entry, :each_slice, :each_cons, :each_with_object, :chunk, :slice_before, :lazy, :nil?, :===, :=~, :!~, :class, :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]


# -----
# çok daha fazlası ve detaylı açıklaması için bknz: http://ruby-doc.org/core-2.2.0/Array.html
# -----


# methodlara bakınca ilk ve son elemanları almak için daha kolay method olduğunu görüyoruz.
users.first # => "vigo"
users.last # => "fka"


# array elemanları arasında döngüye girmek
users.each do |eleman|
   puts eleman
end


# //////////////////////////////////////////////
# Hash
# //////////////////////////////////////////////


my_hash = {
  id: 1,
  user_name: "vigo"
}

# veya

my_other_hash = {
  :id => 1,
  :user_name => "adem"
}

# seklinde tanımlanır.
# önerilen: my_hash


my_hash # => {:id=>1, :user_name=>"vigo"}
my_hash.class # => Hash


# array'e dışarıdan bir değişken ve oluşturduğumuz hash'i de eleman olarak ekleyebiliriz
x = 8
my_custom_array = ["vigo", "adem", 5, 11, x, my_hash]
my_custom_array # => ["vigo", "adem", 5, 11, 8, {:id=>1, :user_name=>"vigo"}]


# array başka bir array'i de eleman olarak tutabilir
mini_array = [1, 2, 3]
my_custom_array = ["vigo", "adem", 5, 11, x, my_hash, mini_array]
my_custom_array # => ["vigo", "adem", 5, 11, 8, {:id=>1, :user_name=>"vigo"}, [1, 2, 3]]


# array içinden hash'i tekrar dışarı çıkaralım
arrays_hash_element = my_custom_array[5]
arrays_hash_element # => {:id=>1, :user_name=>"vigo"}


# hash key:value 'den oluştuğu için key üzerinden value alınabilir
arrays_hash_element[:id] # => 1
arrays_hash_element[:user_name] # => "vigo"


# böyle bir key var mı yok mu kontrolü
my_other_hash.has_key?(:id) # => true
my_other_hash.has_key?(:user_name) # => true
my_other_hash.has_key?(:password) # => false


# sadece key'leri almak için (array geri döner)
my_other_hash.keys # => [:id, :user_name]


# veya değerleri alabiliriz (yine array döner)
my_other_hash.values # => [1, "adem"]


# Hash için kullanılacak bütün methodlar
arrays_hash_element.methods # => [:rehash, :to_hash, :to_h, :to_a, :inspect, :to_s, :==, :[], :hash, :eql?, :fetch, :[]=, :store, :default, :default=, :default_proc, :default_proc=, :key, :index, :size, :length, :empty?, :each_value, :each_key, :each_pair, :each, :keys, :values, :values_at, :shift, :delete, :delete_if, :keep_if, :select, :select!, :reject, :reject!, :clear, :invert, :update, :replace, :merge!, :merge, :assoc, :rassoc, :flatten, :include?, :member?, :has_key?, :has_value?, :key?, :value?, :compare_by_identity, :compare_by_identity?, :entries, :sort, :sort_by, :grep, :count, :find, :detect, :find_index, :find_all, :collect, :map, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :first, :all?, :any?, :one?, :none?, :min, :max, :minmax, :min_by, :max_by, :minmax_by, :each_with_index, :reverse_each, :each_entry, :each_slice, :each_cons, :each_with_object, :zip, :take, :take_while, :drop, :drop_while, :cycle, :chunk, :slice_before, :lazy, :nil?, :===, :=~, :!~, :<=>, :class, :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]




# //////////////////////////////////////////////
# Example
# //////////////////////////////////////////////

products = [
  {id: 1, name: "Playstation 1"},
  {id: 2, name: "Amiga 500"},
  {id: 3, name: "Commodore 64"},
]


shopping_basket = [products[0], products[2]]
# veya
# shopping_basket = products[0], products[2]

shopping_basket # => [{:id=>1, :name=>"Playstation 1"}, {:id=>3, :name=>"Commodore 64"}]

extra_purchase_item = products[1]
extra_purchase_item # => {:id=>2, :name=>"Amiga 500"}

# diziye yeni elemanı eklemek için
shopping_basket << extra_purchase_item
# veya
# shopping_basket.push(extra_purchase_item)

shopping_basket # => [{:id=>1, :name=>"Playstation 1"}, {:id=>3, :name=>"Commodore 64"}, {:id=>2, :name=>"Amiga 500"}]

