require 'minitest/autorun'
require 'minitest/pride'
require "./lib/iteration1.rb"
require 'pry'

class TestLinkedList < Minitest::Test

  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_head_exists
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_append_works
    list = LinkedList.new
    assert_equal
  end 

end
