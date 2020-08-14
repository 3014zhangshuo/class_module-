module Management
  def company_notifies
    'company_notifies from Management'
  end
end

module Track
  def company_notifies
    'company_notifies from Track'
  end
end

class User
  include Management #可以当做是当前类的父类
  include Track

  def company_notifies
    puts super
    'company_notifies from User'
  end

end

p User.ancestors # => [User, Track, Management, Object, Kernel, BasicObject]

puts '-' * 30
user = User.new
puts user.company_notifies
