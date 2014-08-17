# Build your Data Structure knowledge with this program

class Node
    attr_accessor :value, :next
    
    def initialize
      @value = nil
      @next = nil
    end
end



class List
  attr_accessor :head, :tail
  
  def initialize()
    @current_node = Node.new
    @head = nil
    @tail = nil
  end

  def length
  end
  
  def shift(val)
    if @tail == nil
      old_head = @head
      @head = nil
    else
      old_head = @head
      @head = @tail.head
      @tail = @tail.tail
    end
  end

  def unshift(val)

    if @head == nil
      @head = val # changing the head value from nil to current new value (val)
    else
      # creates a new list
      new_list = List.new 
      # update the new list
      new_list.head = @head # making new list's head to the current head value
      new_list.tail = @tail # making the new list's tail value to the 
      # update the current head
      @head = val
      @tail = new_list
    end
    self # returns its own list
  end 


    # if @head != nil
    #   new_node = Node.new #creating a new node
    #   new_node.value = val # setting up new_node's value to the new value (val)
    #   new_node.next = @current_node 
    #   @current_node = new_node # updating current node to new_node's value

    #   @tail = @current_node.next
    # else
    #   @head = val
    #   @current_node.value = val # updating the current node to the newly created value (val)
    # end
  
  

  def [](index)
  end

  def []=(index, value)
  end

  def slice(start, finish)
  end

  def each
  end

end

myList = List.new # creating a new List

