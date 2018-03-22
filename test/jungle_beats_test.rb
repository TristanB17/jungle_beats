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

  def test_can_append_data
    jb = JungleBeat.new
    jb.append("It's-a me a-Mario")
    assert_equal ["It's-a", "me", "a-Mario"], jb.append("It's-a me a-Mario")
    assert_equal 3, jb.list.count
  end

end
