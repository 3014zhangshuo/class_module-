module Management
  def company_notifies
    'company_notifies from Management'
  end
end

module Track
  include Management

  def company_notifies
    puts super
    'company_notifies from Track'
  end
end

include Track # module 不能被实例化 只能include到当前的命名空间
p Track.ancestors

puts company_notifies
