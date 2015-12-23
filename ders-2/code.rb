# değişken
# 2 tane datatype: Fixnum, String

# array

my_array = []
my_array.class # => Array

my_array.__id__ # => 70290113588740
my_array.__id__ # => 70290113588740

a = 5
a.__id__ # => 11

#           0       1      2                 ...... n
users = ["vigo", "adem", "fka"]

users[0] # => "vigo"

users.first # => "vigo"
users.last # => "fka"


# ["vigo", "adem", "fka"] 3 eleman, boyu 3
# 3.elemanı almam lazım
# array'in boyundan - 1 (0 index)

users.length # => 3
users[ (users.length - 1) ] # => "fka"
users.last # => "fka"

users = ["vigo", "adem", "fka"]

# users.each do |eleman|
#   puts eleman.class
# end

String.class # => Class

x = 8
my_custom_array = ["vigo", "adem", 5, 11, x]
my_custom_array # => ["vigo", "adem", 5, 11, 8]

my_hash = {
  id: 1,
  user_name: "vigo"
}

my_hash # => {:id=>1, :user_name=>"vigo"}
my_hash.class # => Hash

my_custom_array = ["vigo", "adem", 5, 11, x, my_hash]

my_custom_array # => ["vigo", "adem", 5, 11, 8, {:id=>1, :user_name=>"vigo"}]

mini_array = [1, 2, 3]
my_custom_array = ["vigo", "adem", 5, 11, x, my_hash, mini_array]

my_custom_array # => ["vigo", "adem", 5, 11, 8, {:id=>1, :user_name=>"vigo"}, [1, 2, 3]]

# my_custom_array.each do |eleman|
#   puts eleman.class
# end

my_other_hash = {
  :id => 1,
  :user_name => "adem"
}
my_other_hash # => {:id=>1, :user_name=>"adem"}

arrays_hash_element = my_custom_array[5]
arrays_hash_element # => {:id=>1, :user_name=>"vigo"}

arrays_hash_element[:id] # => 1
arrays_hash_element[:user_name] # => "vigo"

my_other_hash.has_key?(:id) # => true
my_other_hash.has_key?(:user_name) # => true
my_other_hash.has_key?(:password) # => false

my_other_hash.keys # => [:id, :user_name]
my_other_hash.values # => [1, "adem"]

my_other_hash.size # => 2
my_other_hash.length # => 2

my_other_hash.first # => [:id, 1]

arrays_hash_element.methods # => [:rehash, :to_hash, :to_h, :to_a, :inspect, :to_s, :==, :[], :hash, :eql?, :fetch, :[]=, :store, :default, :default=, :default_proc, :default_proc=, :key, :index, :size, :length, :empty?, :each_value, :each_key, :each_pair, :each, :keys, :values, :values_at, :shift, :delete, :delete_if, :keep_if, :select, :select!, :reject, :reject!, :clear, :invert, :update, :replace, :merge!, :merge, :assoc, :rassoc, :flatten, :include?, :member?, :has_key?, :has_value?, :key?, :value?, :compare_by_identity, :compare_by_identity?, :any?, :entries, :sort, :sort_by, :grep, :count, :find, :detect, :find_index, :find_all, :collect, :map, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :first, :all?, :one?, :none?, :min, :max, :minmax, :min_by, :max_by, :minmax_by, :each_with_index, :reverse_each, :each_entry, :each_slice, :each_cons, :each_with_object, :zip, :take, :take_while, :drop, :drop_while, :cycle, :chunk, :slice_before, :slice_after, :slice_when, :lazy, :nil?, :===, :=~, :!~, :<=>, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
# :inspect, :to_s, :==, :[], :hash, :eql?, :fetch, :[]=, :store, :default, :default=, 
# :default_proc, :default_proc=, :key, :index, :size, :length, :empty?, :each_value, 
# :each_key, :each_pair, :each, :keys, :values, :values_at, :shift, :delete, :delete_if, 
# :keep_if, :select, :select!, :reject, :reject!, :clear, :invert, :update, :replace, :merge!, 
# :merge, :assoc, :rassoc, :flatten, :include?, :member?, :has_key?, :has_value?, :key?, :value?, 
# :compare_by_identity, :compare_by_identity?, :any?, :entries, :sort, :sort_by, :grep, :count, 
# :find, :detect, :find_index, :find_all, :collect, :map, :flat_map, :collect_concat, :inject, 
# :reduce, :partition, :group_by, :first, :all?, :one?, :none?, :min, :max, :minmax, :min_by, 
# :max_by, :minmax_by, :each_with_index, :reverse_each, :each_entry, :each_slice, :each_cons, 
# :each_with_object, :zip, :take, :take_while, :drop, :drop_while, :cycle, :chunk, :slice_before, 
# :slice_after, :slice_when, :lazy, :nil?, :===, :=~, :!~, :<=>, :class, :singleton_class, :clone, 
# :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, 
# :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, 
# :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, 
# :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, 
# :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, 
# :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

arrays_hash_element.public_methods # => [:rehash, :to_hash, :to_h, :to_a, :inspect, :to_s, :==, :[], :hash, :eql?, :fetch, :[]=, :store, :default, :default=, :default_proc, :default_proc=, :key, :index, :size, :length, :empty?, :each_value, :each_key, :each_pair, :each, :keys, :values, :values_at, :shift, :delete, :delete_if, :keep_if, :select, :select!, :reject, :reject!, :clear, :invert, :update, :replace, :merge!, :merge, :assoc, :rassoc, :flatten, :include?, :member?, :has_key?, :has_value?, :key?, :value?, :compare_by_identity, :compare_by_identity?, :any?, :entries, :sort, :sort_by, :grep, :count, :find, :detect, :find_index, :find_all, :collect, :map, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :first, :all?, :one?, :none?, :min, :max, :minmax, :min_by, :max_by, :minmax_by, :each_with_index, :reverse_each, :each_entry, :each_slice, :each_cons, :each_with_object, :zip, :take, :take_while, :drop, :drop_while, :cycle, :chunk, :slice_before, :slice_after, :slice_when, :lazy, :nil?, :===, :=~, :!~, :<=>, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
arrays_hash_element.private_methods # => [:initialize, :initialize_copy, :initialize_dup, :initialize_clone, :sprintf, :format, :Integer, :Float, :String, :Array, :Hash, :warn, :raise, :fail, :global_variables, :__method__, :__callee__, :__dir__, :eval, :local_variables, :iterator?, :block_given?, :catch, :throw, :loop, :respond_to_missing?, :trace_var, :untrace_var, :at_exit, :syscall, :open, :printf, :print, :putc, :puts, :gets, :readline, :readlines, :`, :p, :test, :srand, :rand, :trap, :load, :require, :require_relative, :autoload, :autoload?, :proc, :lambda, :binding, :caller, :caller_locations, :exec, :fork, :exit!, :system, :spawn, :sleep, :exit, :abort, :Rational, :Complex, :set_trace_func, :gem, :gem_original_require, :singleton_method_added, :singleton_method_removed, :singleton_method_undefined, :method_missing]

# {:id=>1, :user_name=>"vigo"}
# key => value


# String
# String
# Fixnum
# Fixnum
# Fixnum
# Hash
# Array




# --------------------------------------------------------------------------

my_new_array = ["vigo", "adem", 5, 11, 8, {:id=>1, :user_name=>"vigo"}, [1, 2, 3]]
my_new_array # => ["vigo", "adem", 5, 11, 8, {:id=>1, :user_name=>"vigo"}, [1, 2, 3]]

my_new_array.methods # => [:inspect, :to_s, :to_a, :to_h, :to_ary, :frozen?, :==, :eql?, :hash, :[], :[]=, :at, :fetch, :first, :last, :concat, :<<, :push, :pop, :shift, :unshift, :insert, :each, :each_index, :reverse_each, :length, :size, :empty?, :find_index, :index, :rindex, :join, :reverse, :reverse!, :rotate, :rotate!, :sort, :sort!, :sort_by!, :collect, :collect!, :map, :map!, :select, :select!, :keep_if, :values_at, :delete, :delete_at, :delete_if, :reject, :reject!, :zip, :transpose, :replace, :clear, :fill, :include?, :<=>, :slice, :slice!, :assoc, :rassoc, :+, :*, :-, :&, :|, :uniq, :uniq!, :compact, :compact!, :flatten, :flatten!, :count, :shuffle!, :shuffle, :sample, :cycle, :permutation, :combination, :repeated_permutation, :repeated_combination, :product, :take, :take_while, :drop, :drop_while, :bsearch, :any?, :pack, :entries, :sort_by, :grep, :find, :detect, :find_all, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :all?, :one?, :none?, :min, :max, :minmax, :min_by, :max_by, :minmax_by, :member?, :each_with_index, :each_entry, :each_slice, :each_cons, :each_with_object, :chunk, :slice_before, :slice_after, :slice_when, :lazy, :nil?, :===, :=~, :!~, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
# :==, :eql?, :hash, :[], :[]=, :at, :fetch, :first, :last, :concat, :<<, :push, 
# :pop, :shift, :unshift, :insert, :each, :each_index, :reverse_each, :length, :size, 
# :empty?, :find_index, :index, :rindex, :join, :reverse, :reverse!, :rotate, :rotate!, 
# :sort, :sort!, :sort_by!, :collect, :collect!, :map, :map!, :select, :select!, :keep_if, 
# :values_at, :delete, :delete_at, :delete_if, :reject, :reject!, :zip, :transpose, :replace, 
# :clear, :fill, :include?, :<=>, :slice, :slice!, :assoc, :rassoc, :+, :*, :-, :&, :|, :uniq, 
# :uniq!, :compact, :compact!, :flatten, :flatten!, :count, :shuffle!, :shuffle, :sample, :cycle, 
# :permutation, :combination, :repeated_permutation, :repeated_combination, :product, :take, 
# :take_while, :drop, :drop_while, :bsearch, :any?, :pack, :entries, :sort_by, :grep, :find, 
# :detect, :find_all, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :all?, 
# :one?, :none?, :min, :max, :minmax, :min_by, :max_by, :minmax_by, :member?, :each_with_index, 
# :each_entry, :each_slice, :each_cons, :each_with_object, :chunk, :slice_before, :slice_after, 
# :slice_when, :lazy, :nil?, :===, :=~, :!~, :class, :singleton_class, :clone, :dup, :itself, 
# :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :methods, :singleton_methods, 
# :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, 
# :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, 
# :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, 
# :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, 
# :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

my_new_array.to_s # => "[\"vigo\", \"adem\", 5, 11, 8, {:id=>1, :user_name=>\"vigo\"}, [1, 2, 3]]"
# " [\"vigo\", \"adem\", 5, 11, 8, {:id=>1, :user_name=>\"vigo\"}, [1, 2, 3]] "

converted_version = my_new_array.to_s
converted_version.class # => String

my_new_array.to_s[0] # => "["

test_string = "Merhaba Dünya"
test_string.class # => String

test_string[0] # => "M"
test_string[1] # => "e"
test_string[2] # => "r"
test_string[3] # => "h"
test_string[4] # => "a"
test_string[5] # => "b"
test_string[6] # => "a"


products = [
  {id: 1, name: "Playstation 1"},
  {id: 2, name: "Amiga 500"},
  {id: 3, name: "Commodore 64"},
]


shopping_basket = [products[0], products[2]]
shopping_basket # => [{:id=>1, :name=>"Playstation 1"}, {:id=>3, :name=>"Commodore 64"}]

extra_purchase_item = products[1]
extra_purchase_item # => {:id=>2, :name=>"Amiga 500"}

# shopping_basket << extra_purchase_item
# shopping_basket.<<(extra_purchase_item)

# extra_purchase_item >> shopping_basket

shopping_basket.push(extra_purchase_item)

shopping_basket # => [{:id=>1, :name=>"Playstation 1"}, {:id=>3, :name=>"Commodore 64"}, {:id=>2, :name=>"Amiga 500"}]


5 + 5 # => 10
5.class # => Fixnum




# users.each(function(i, eleman){

#
# });
# 
# for (var i=0; i < users.length; i++) {
#     var eleman = users[i];
# };
#
# var x = {
#  user_id: 1,
#  user_email: "vigo@me.com"
#}
# x.user_id 
my_array.methods # => [:inspect, :to_s, :to_a, :to_h, :to_ary, :frozen?, :==, :eql?, :hash, :[], :[]=, :at, :fetch, :first, :last, :concat, :<<, :push, :pop, :shift, :unshift, :insert, :each, :each_index, :reverse_each, :length, :size, :empty?, :find_index, :index, :rindex, :join, :reverse, :reverse!, :rotate, :rotate!, :sort, :sort!, :sort_by!, :collect, :collect!, :map, :map!, :select, :select!, :keep_if, :values_at, :delete, :delete_at, :delete_if, :reject, :reject!, :zip, :transpose, :replace, :clear, :fill, :include?, :<=>, :slice, :slice!, :assoc, :rassoc, :+, :*, :-, :&, :|, :uniq, :uniq!, :compact, :compact!, :flatten, :flatten!, :count, :shuffle!, :shuffle, :sample, :cycle, :permutation, :combination, :repeated_permutation, :repeated_combination, :product, :take, :take_while, :drop, :drop_while, :bsearch, :any?, :pack, :entries, :sort_by, :grep, :find, :detect, :find_all, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :all?, :one?, :none?, :min, :max, :minmax, :min_by, :max_by, :minmax_by, :member?, :each_with_index, :each_entry, :each_slice, :each_cons, :each_with_object, :chunk, :slice_before, :slice_after, :slice_when, :lazy, :nil?, :===, :=~, :!~, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]





new_array1 = []
new_array2 = Array.new
new_array3 = [1, 2, 3]


new_array1.size # => 0
new_array2.size # => 0
new_array3.size # => 3

new_array2 = Array.new(10)
new_array2 # => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]

new_array2 = Array.new(10, "vigo")
new_array2 # => ["vigo", "vigo", "vigo", "vigo", "vigo", "vigo", "vigo", "vigo", "vigo", "vigo"]


