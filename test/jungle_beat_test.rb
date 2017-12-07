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

  def test_append_appends_new_data
    jb = JungleBeat.new

    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_list_returns_correct_value
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    assert_equal 'deep', jb.list.head.data
    assert_equal 'doo', jb.list.head.next_node.data
  end


  def test_count_returns_count_of_nodes
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("doot dee dah")

    assert_equal 6, jb.count
  end

  # If sound plays, it is working!!!!!
  def test_play_plays_sounds
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("doot dee dah")

    jb.play
  end

end
