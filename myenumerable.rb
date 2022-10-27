module MyEnumerable
  def all?
    if block_given?
      my_each { |x| return false unless yield(x) }
      true
    else
      all? { |x| x }

    end
  end

  def any?
    if block_given?
      my_each { |x| return true if yield(x) }
      false
    else
      any? { |x| x }
    end
  end

  def filter?
    if block_given?
      result = []
      my_each { |x| result << x if yield(x) }
      result
    else
      self
    end
  end
end
