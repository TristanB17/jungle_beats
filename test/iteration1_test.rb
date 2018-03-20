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

  def test_append_works
    list = LinkedList.new
    list.append("rocksteady")

    assert_equal "rocksteady", list.head.data
  end

  def test_head_next_node
    skip
    list = LinkedList.new("rocksteady")
    head = Node.new("beebop")
    assert_equal nil, list.head.next_node
  end

  def test_count
    skip
    list = LinkedList.new("rocksteady")
    assert_equal 1, list.count
  end

  def to_string
    skip
    list = LinkedList.new("rocksteady")
    assert_equal "deebop", list.to_string
  end

end
