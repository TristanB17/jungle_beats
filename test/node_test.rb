require 'minitest/autorun'
require 'minitest/pride'
require "./lib/node.rb"
require 'pry'

class TestNode < Minitest::Test
  def test_it_exists
    node = Node.new("beebop")
    assert_instance_of Node, node
  end

  def test_data_method
    node = Node.new("beebop")
    assert_equal "beebop", node.data
  end

  def test_next_node
    node = Node.new("beebop")
    assert_equal nil, node.next_node
  end

  def test_tail_is_true_if_next_node_nil
    node = Node.new("karai")
    assert_equal true, node.next_node.nil?
  end

  def test_next_node_can_change
    node = Node.new("footclan")
    node.next_node = "cowabunga"
    assert_equal "cowabunga", node.next_node
  end



end
