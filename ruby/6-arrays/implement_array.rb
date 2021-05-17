#!/usr/bin/env ruby
#
class CustomArray

  def initialize
    @length = 0
    @data = {}
  end

  def get(index)
    return @data[index]
  end

  def push(item)
    @data[@length] = item
    @length += 1
  end

  def pop()
    last_item = @data[@length - 1]
    @data.delete(@length - 1)
    @length -= 1
    last_item
  end

  def delete(index)
    item = @data[index]
    shift_items(index)
  end

  def shift_items(index)
    @data.values.each do |i|
      @data[i] = @data[i + 1]
    end
  end

end

hello = CustomArray.new
puts hello.get(0)
hello.push(2)
p hello
hello.push(5)
p hello
p hello.pop
p hello
hello.push(8)
hello.push(9)
hello.push(6)
p hello
hello.delete(3)
p hello
