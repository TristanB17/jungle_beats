require 'minitest/autorun'
require 'minitest/pride'
require "./lib/iteration0.rb"
require 'pry'

class TestNode < Minitest::Test
  def test_it_exists
    node = Node.new("beebop")
    assert_instance_of Node, node
  end

  def test_data_method
    node = Node.new("beebop")
    assert_equal "boosh", node.data
  end

  def test_next_node
    node = Node.new("beebop")
    assert_equal nil, node.next_node
  end


end
