require 'pry'

class LinkedList
  attr_reader   :head,
                :count

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
  end

  def counter
    @count = 1
    combined = @head
  end

  def to_string
    string = ""
    string << @head.data
  end

end
