#class 进阶
Array.class # => class class类的一个实例
Class.class # => class

# 父类
Array.superclass # => Object
Object.superclass # => BasicObject
BasicObject.superclass # => nil

# ancestors
Array.ancestors # => [Array, Enumerable, Object, Kernel]

#方法查找 => 自下而上


#演示1
class User
  def panels
    @panels ||= ['Profile', 'Products']
  end
end

class Admin < User
end

puts Admin.ancestors # => Admin User Object Kernel BasicObject
admin = Admin.new
p admin.panels # => ["Profile", "Products"]

#menthod overwrite 方法覆盖
class User
  def panels
    @panels ||= ['Profile', 'Products']
  end
end
class Admin < User
  def panels
    'overwrite'
  end
end

user = User.new
puts user.panels

# overwrite and re-open

class Array
  def to_hello_world
    "hello #{self.join(', ')}"
  end
end
a = %w[cat horse dog]
puts a.to_hello_world
