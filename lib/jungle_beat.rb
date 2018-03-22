require_relative 'linkedlist.rb'

class JungleBeat
  attr_reader   :list,
                :data

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    @data = data.split("\s")
    @data.each do |beat|
      @list.append(beat)
    end
    @data.join(" ")
  end

  def count
    @list.count
  end


end
