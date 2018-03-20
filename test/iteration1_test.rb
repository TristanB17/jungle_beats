require 'minitest/autorun'
require 'minitest/pride'
require "./lib/iteration1.rb"
require "./lib/iteration0.rb"
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

  def test_list_has_node
    list = LinkedList.new


  def test_append
    list = LinkedList.new
    list.append("beebop")
    assert_equal "beebop", list.head.data
    assert_nil list.head.next_node
  end

  def test_append_2
    list = LinkedList.new
    list.append("rocksteady")
    assert_equal "rocksteady", list.head.data
    assert_nil list.head.next_node
  end

  def test_count
    list = LinkedList.new
    list.append("beebop")
    list.head.next_node("rocksteady")
    assert_equal 2, list.count
  end

  def test_to_string
    list = LinkedList.new
    list.append("beebop")
    list.head.next_node("rocksteady")
    assert_equal "beebop rocksteady", list.to_string
  end

end
