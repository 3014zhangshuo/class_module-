#module 支持类方法
module Management
  def self.progress
    'progress'
  end

  # 类似实例方法 you need to include/extend/prepend to use this method
  def company_notifies
    'company_notifies from Management'
  end
end


extend Management

puts company_notifies
puts Management.progress

# include vs prepend

#include 把模块注入当前类的继承链后面
#prepend 把模块注入当前类的继承链前面
