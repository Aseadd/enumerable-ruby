require_relative 'myenumerable'

class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(*list)
    @list = list
  end

  def my_each
    (0...@list.length).each { |x| yield(@list[x]) }
  end
end

list = MyList.new(1, 2, 3, 4)
p list.list
puts('Testing all?')
puts(list.all? { |x| x < 5 })
puts(list.all? { |x| x > 5 })
puts('Testing any?')
puts(list.any? { |x| x < 5 })
puts(list.any? { |x| x > 5 })
puts('Testing filter?')
p(list.filter?(&:even?))
