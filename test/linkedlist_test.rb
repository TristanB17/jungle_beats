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

  def test_insert
    list = LinkedList.new
    list.append("boom")
    list.append("lakka")
    list.insert(2, "shakka")
    assert_equal "boom shakka lakka", list.to_string
  end

  def test_find
    list = LinkedList.new
    list.append("我")
    list.append("没有")
    list.append("活力")
    list.find(2)
    assert_equal "活力", list.find(2)
  end

  def test_pop
    list = LinkedList.new
    list.append("我们都有一个家")
    list.append("名字叫")
    list.append("中国")
    list.pop
    assert_equal "中国", list.pop
  end

  def test_include?
    list = LinkedList.new
    list.append("Mein")
    list.append("Kopf")
    list.append("schmerzt")
    list.include?("Kopf")
    assert list.include?("Kopf")
  end



end
