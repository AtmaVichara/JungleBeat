require './lib/jungle_beat/jungle_beat'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class JungleBeatTest < Minitest::Test

  def test_jungle_beat_initialized
    jb = JungleBeat.new

    assert_instance_of JungleBeat, jb
  end


  def test_list_initializes_new_linked_list_node
    jb = JungleBeat.new
    jb.list

    assert_instance_of LinkedList, jb.list
  end
end
