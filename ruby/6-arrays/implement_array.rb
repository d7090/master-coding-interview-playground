#!/usr/bin/env ruby
#
class CustomArray

  attr_accessor :data

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
    index.upto(@length - 1) do |i|
      @data[i] = @data[i + 1]
    end
    @data.delete(@length - 1)
    @length -= 1
  end

  def prepend(item)
    first_item = @data[0]
    unshift_items()
    @data[0] = item
    @length += 1
  end

  def unshift_items()
    @data[@length] = nil
    @length.downto(0) do |i|
      @data[i] = @data[i - 1]
    end
  end

end

hello = CustomArray.new
puts hello.get(0)
hello.push(2)
hello.push(5)
p hello.pop
hello.push(8)
hello.push(6)
hello.delete(3)
hello.prepend(12)
hello.prepend(3)
hello.push("whats")
hello.push("popping")
p hello.get(5)
p hello
