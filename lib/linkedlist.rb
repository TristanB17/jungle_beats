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

  def count
      return 0 if @head == nil
      count = 1
      current = @head
      until current.next_node.nil?
        current = current.next_node
        count += 1
      end
      count
  end

  def empty
    @head.nil?
  end

  def to_string
    current = @head
    @array = []
    if current
      @array << current.data
      until current.next_node.nil?
        current = current.next_node
        @array << current.data
      end
      @array.join(" ")
    else
      ""
    end
  end

  # def to_string
  # binding.pry
  # current = @head
  # words = "#{current.data}"
  # (count - 1).times do
  #   current = current.next_node
  #   words.concat( "#{current.data}")
  #   end
  # words
  # end

  def prepend(data)
    prev_head = @head
    @head = Node.new(data)
    @head.next_node = prev_head
  end

  def insert(number, data)
    current = @head
    (number - 2).times do
      current = current.next_node
    end
    new_node = Node.new(data)
    new_node.next_node = current.next_node
    current.next_node = new_node
  end

  def find(index, beat)
    current = @head
    count = 0
    until count == index
      current = current.next_node
      count += 1
    end
    beat = "#{current.data}"
    (count - 1).times do
      current = current.next_node
      beat.concat("#{current.data}")
    end
    current.data
  end

  def pop
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.data
  end

  def include?(data)
    current = @head
    until current == nil
      return true if current.data == data
      current = current.next_node
    end
    false
  end


end
