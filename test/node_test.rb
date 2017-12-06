require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'

class JungleBeatsTest < Minitest::Test

  def test_node_is_initialized
    node = Node.new('plop')

    assert_instance_of Node, node
  end


  def test_node_returns_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_next_node_initializes_nil
    node = Node.new('plop')

    assert_nil node.next_node
  end
end
