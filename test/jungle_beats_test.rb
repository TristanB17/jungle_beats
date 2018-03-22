require 'minitest/autorun'
require 'minitest/pride'
require "./lib/jungle_beat.rb"
require "./lib/linkedlist.rb"
require "./lib/node.rb"
require 'pry'

class TestJungleBeat < Minitest::Test
  attr_reader :list

  def test_it_exists
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_jungle_beat_uses_linked_list_file
    jb = JungleBeat.new
    assert_nil jb.list.head
  end

  def test_jungle_beat_knows_its_a_node
    jb = JungleBeat.new
    assert_equal JungleBeat, jb.class
    assert_equal LinkedList, jb.list.class
  end

  def test_can_append_data
    jb = JungleBeat.new
    jb.append("It's-a me a-Mario")
    jb.append("hey ya")
    assert_equal "It's-a me a-Mario", jb.append("It's-a me a-Mario")
    assert_equal "It's-a", jb.list.head.data
  end

  def test_beat_count
    jb = JungleBeat.new
    jb.append("Singe ich ein Lied für dich")
    jb.append("von 99 Luftballoons")
    assert_equal 9, jb.count
  end

end
