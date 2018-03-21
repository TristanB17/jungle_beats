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

  def to_string
    @string
  end

end
