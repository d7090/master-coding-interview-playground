#!/usr/bin/env ruby
#

class HashTable

  attr_accessor :size

  def initialize(size)
    @data = Array.new(size)
  end

  def _hash(key)
    hash = 0
    0.upto(key.length - 1) do |i|
      hash = (hash + key[i].ord * i) % @data.length
    end
    hash
  end

  def get(key)
    hash_value = self._hash(key)
    if @data[hash_value]
      0.upto(@data[hash_value].length) do |i|
        if @data[hash_value][i][0] == key
          return @data[hash_value][i][1]
        end
      end
    end
    Nil
  end

  def set(key, value)
    hash_value = self._hash(key) #calculate from hash fnc
    if !@data[hash_value]
      @data[hash_value] = [[key, value]]
    else
      @data[hash_value].append([key, value])
    end
  end
end

new_hash = HashTable.new(5)
new_hash.set('grapes', 1000)
p new_hash.get('grapes')
p new_hash
