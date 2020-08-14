#include 把模块注入当前类的继承链后面
#prepend 把模块注入当前类的继承链前面
module Management
  def company_notifies
    'company_notifies from Management'
  end
end

class User
  #include Management #可以当做是当前类的父类
  prepend Management
  def company_notifies
    'company_notifies from User'
  end

end

p User.ancestors # => include [User, Management, Object, Kernel, BasicObject]
                 # => prepend [Management, User, Object, Kernel, BasicObject]

puts '-' * 30
user = User.new
puts user.company_notifies # include 'company_notifies from User'
                           # prepend  'company_notifies from Management'
