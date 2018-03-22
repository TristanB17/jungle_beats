require_relative 'linkedlist.rb'

class JungleBeat
  attr_reader   :list

  def initialize
    @list = LinkedList.new
  end

end
