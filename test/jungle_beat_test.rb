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

    assert_equal 3, jb.append("deep doo ditt")
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

  def test_all_prints_all_beats
    jb = JungleBeat.new
    jb.append('deep doo ditt')

    assert_equal 'deep doo ditt', jb.all
  end

  def test_prepend_inserts_data_in_head
    jb = JungleBeat.new
    jb.append('deep doo ditt')
    jb.prepend('doo')

    assert_equal 'doo deep doo ditt', jb.all
  end

  def test_append_can_not_take_more_than_4_chars
    jb = JungleBeat.new
    jb.append('tee tee tee mississippi')

    assert_equal 'tee tee tee', jb.all
  end

  def test_append_does_not_count_words_more_than_4_chars
    jb = JungleBeat.new

    assert_equal 3, jb.append('tee tee tee mississippi')
  end

  def test_play_returns_number_of_beats
    jb = JungleBeat.new
    jb.append('deep doo ditt')

    assert_equal 3, jb.play
  end


end
