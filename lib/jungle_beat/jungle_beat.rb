require "./lib/linked_list/linked_list"
require "./lib/node/node"
require "pry"

class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def list
    @list
  end

  def append(data)
    split_data = data.split(' ')
    split_data.each do |split|
      if split.length <= 4
        @list.append(split)
      end
    end
    count
  end

  def prepend(data)
    split_data = data.split(' ')
    split_data.each do |split|
      if split.length <= 4
        @list.prepend(split)
      end
    end
    count
  end

  def count
    @list.count
  end

  def play
    `say -r 500 -v Boing "#{@list.to_string}"`
    return count
  end

  def all
    @list.to_string
  end

end
