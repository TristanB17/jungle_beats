require_relative 'linkedlist.rb'

class JungleBeat
  attr_reader   :list,
                :data

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    @data.split(' ')
  end

end