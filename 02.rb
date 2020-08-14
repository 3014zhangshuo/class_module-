#module 进阶
#class 是一个特殊的module class可以实例化，module是去除了实例化功能的特殊的class
Array.ancestors # => Array Enumerable Object Kernel
Enumerable.class # => Module
Module.class # => Class

# 01
module Management
  def company_notifies
    'company_notifies from Management'
  end
end

class User
  include Management #可以当做是当前类的父类

  def company_notifies
    puts super
    'company_notifies from User'
  end

end

p User.ancestors # => [User, Management, Object, Kernel, BasicObject]

puts '-' * 30
user = User.new
puts user.company_notifies
