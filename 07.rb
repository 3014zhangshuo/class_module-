#included 方法 关键字方法
#当模块被include时会被执行，同时会传递当前作用域的self对象

module Management
  def self.included base
    puts "Management is being included into #{base}"

    base.include InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods
    def company_notifies
      'company_notifies from Management'
    end
  end

  module ClassMethods
    def progress
      'progress'
    end
  end

end

class User
  include Management
end

user = User.new

puts user.company_notifies
puts User.progress
