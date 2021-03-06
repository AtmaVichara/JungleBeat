require './lib/node/node'
require 'pry'

class LinkedList
  attr_accessor :head,
                :count



  def initialize(head = nil)
    @head = head
  end

  def append(data, current_node = @head)
    if @head.nil?
      @head = Node.new(data)
    elsif current_node.next_node.nil?
      current_node.next_node = Node.new(data)
    else
      return if current_node.next_node.nil?
      append(data, current_node.next_node)
    end
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node, @head = @head, new_node
    data
  end


  def to_string
    current_node = @head
    beats = ''
    while current_node.next_node != nil
      beats << current_node.data.concat(' ')
      current_node = current_node.next_node
    end
    beats << current_node.data
  end


  def count
    if @head == nil
      count = 0
    else
      count = 1
      current_node = @head
      while current_node.next_node != nil
        count += 1
        current_node = current_node.next_node
      end
    end
    count
  end

  def insert(num, data)
    current_node = @head
    (num-1).times do
      current_node = current_node.next_node
    end
    virtual_node = current_node.next_node
    current_node.next_node = Node.new(data)
    current_node.next_node.next_node = virtual_node

    virtual_node.data

  end


  def find(index, nodes)
    current_node = @head
    beats = ''
    index.times do
      current_node = current_node.next_node
    end
    beats <<  current_node.data
    (nodes - 1).times do
      current_node = current_node.next_node
      beats << ' ' + current_node.data
    end
    beats
  end


  def includes?(data)
    current_node = @head
    until current_node.data == data || current_node.next_node.nil?
      current_node = current_node.next_node
    end
    if current_node.data == data
      true
    else
      false
    end
  end



  def pop
    current_node = @head
    while current_node.next_node.next_node != nil
      current_node = current_node.next_node
    end
    popped_data = current_node.next_node.data
    current_node.next_node = nil
    popped_data
  end


end
