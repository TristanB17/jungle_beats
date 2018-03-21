require 'pry'

require "./lib/node.rb"

class LinkedList
  attr_reader   :head,
                :count

  def initialize
    @head = nil
  end

  def append(data)
    current = @head
    if @head.nil?
    @head = Node.new(data)
    else
      until current.next_node.nil?
        current = current.next_node
      end
        current.next_node = Node.new(data)
    end
  end

  def counter
      return 0 if @head == nil
      count = 1
      current = @head
      until current.next_node.nil?
        current = current.next_node
        count += 1
      end
      count
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

  def to_string
    # binding.pry
    @string = []
    #turn data into string
    #make data string an array

  end

end
