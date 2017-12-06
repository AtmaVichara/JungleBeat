require './lib/linked_list/linked_list'
require 'minitest/autorun'
require 'minitest/pride'
require "pry"

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_head_method_returns_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append_returns_data
    list = LinkedList.new
    list.append('boop')

    assert_equal 'boop', list.head.data
  end

  def test_head_next_node_is_nil
    list = LinkedList.new
    list.append('doop')

    assert_nil list.head.next_node
  end

  def test_to_string_returns_data_as_string
    list = LinkedList.new
    list.append('doop')

    assert_equal 'doop', list.to_string
  end

  def test_next_node_is_not_nil
    list = LinkedList.new
    list.append('doop')
    list.append('deep')

    refute_nil list.head.next_node
  end

  def test_count_takes_more_than_one
    list = LinkedList.new
    list.append('doop')
    list.append('deep')
    list.append('dip')
    list.append('peep')
    list.append('peep')
    list.append('peep')
    list.append('lip')



    assert_equal  7, list.count
  end

  def test_count_zero_if_no_data_provided
    list = LinkedList.new

    assert_equal 0, list.count
  end


  def test_prepend_returns_data_of_head
    list = LinkedList.new
    list.append('suu')
    list.prepend('dop')

    assert_equal 'dop', list.head.data
    assert_equal 'suu', list.head.next_node.data
  end


  def test_data_list_updates_with_modifications
    list = LinkedList.new
    list.append('suu')
    list.prepend('dop')
    list.append('woo')

    list_test_elements = ['dop', 'suu', 'woo']

    assert_equal list_test_elements.join(' '), list.to_string
  end

  def test_insert_inserts_data_in_list
    list = LinkedList.new
    list.append('duup')
    list.append('dip')
    list.append('peep')
    list.insert(1, 'woo')

    assert_equal 'duup', list.head.data
    assert_equal 'woo', list.head.next_node.data
    assert_equal 'dip', list.head.next_node.next_node.data
  end


  def test_find_all_nodes_with_given_data
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shuu')
    list.append('blop')


    assert_equal 'woo', list.find(1, 1)
    assert_equal 'shi', list.find(2, 1)
    assert_equal 'deep woo', list.find(0, 2)
    assert_equal 'woo shi shuu', list.find(1, 3)
    refute_equal 'woo shi shuu', list.find(0, 3)
  end

  def test_include_returns_true_if_data_found
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shuu')
    list.append('blop')


    assert list.includes?('deep')
    assert list.includes?('blop')
    refute list.includes?('lorp')
    refute list.includes?('dep')
  end

  def test_pop_returns_last_node_data
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shuu')
    list.append('blop')

    assert_equal 'blop', list.pop
    assert_equal 'shuu', list.pop

  end

  def test_node_nil_after_pop
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shuu')
    list.append('blop')
    list.pop

    refute list.includes?('blop')
    assert_equal 'deep woo shi shuu', list.to_string
  end


end
