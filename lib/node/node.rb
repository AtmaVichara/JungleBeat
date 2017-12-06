class Node
  attr_accessor :next_node,
                :data

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

end
