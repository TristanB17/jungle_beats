require 'minitest/autorun'
require 'minitest/pride'
require "./lib/linkedlist.rb"
require "./lib/node.rb"
require 'pry'

class TestLinkedList < Minitest::Test

  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_linked_list_empty_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append
    list = LinkedList.new
    list.append("beebop")
    assert_equal "beebop", list.head.data
    assert_nil list.head.next_node
  end


  def test_final_node_can_return_tail
    list = LinkedList.new
    list.append("Karai")
    expectation = list.last_node(list.head)
    assert_instance_of Node, expectation
  end

  def test_when_head_empty_return_true
    list = LinkedList.new
    assert_equal true, list.empty
  end

  def test_empty_is_false_when_head_not_nil
    list = LinkedList.new
    list.append("Karai")
    assert_equal false, list.empty
  end

  def test_count
    list = LinkedList.new
    list.append("beebop")
    list.append("rocksteady")
    assert_equal "rocksteady", list.head.next_node.data
    assert_equal 2, list.counter
  end

  def test_to_string_with_two_nodes
    list = LinkedList.new
    list.append("Beebop")
    list.append("Rocksteady")
    assert_equal "Beebop Rocksteady", list.to_string
  end

  def test_to_string_with_no_nodes
    list = LinkedList.new
    assert_equal "", list.to_string
  end

  def test_prepend
    list = LinkedList.new
    list.append("Rahzar")
    list.prepend("Tokka")
    assert_equal "Tokka Rahzar", list.to_string
  end


end
