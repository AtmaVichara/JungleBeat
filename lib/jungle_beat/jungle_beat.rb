require "./lib/linked_list/linked_list"
require "./lib/node/node"
require "pry"

class JungleBeat

  attr_accessor :list,

  def initialize(list = nil)
    @list = list
    @list = LinkedList.new
  end


end
