#!/usr/bin/env ruby

def reverse_string(inp_string)
  if inp_string.is_a? String
    result = []
    top = inp_string.length - 1
    top.downto(0) do |s|
      result.push(inp_string[s])
    end
  else
    p "#{inp_string} is not a string value"
    return false
  end

  result.join
end

p reverse_string("hello")
p reverse_string("")
p reverse_string(234)
p reverse_string("hello, my name is Ed")

def reverse_string_quick(str)
  return str.reverse unless !str.is_a? String
end

p reverse_string_quick("hello")
p reverse_string_quick("")
p reverse_string_quick(234)
p reverse_string_quick("hello, my name is Ed")
