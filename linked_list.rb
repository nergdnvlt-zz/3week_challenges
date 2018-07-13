require 'pry'
=begin
Given a linked list, remove the n-th node from the end of list and return its head.
Example:
Given linked list: 1->2->3->4->5, and n = 2.
After removing the second node from the end, the linked list becomes 1->2->3->5.
Note:
Given n will always be valid.
Follow up:
Could you do this in one pass?
Use the following Ruby code to get started
=end

class Node
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end


class LinkedList
  attr_reader :head
  def initialize(value)
    @head = Node.new(value)
  end

  def append(value)
    current_node = @head
    until current_node.next == nil
      current_node = current_node.next
    end
    current_node.next = Node.new(value)
  end

  def find(n)
    current_node = @head
    count = 0
    until count == n
      current_node = current_node.next
      count += 1
    end
    return current_node
  end

  def remove_nth_node(head, n)
    current_node = find(n)
    current_node.next = current_node.next.next
    return head
  end
end



list = LinkedList.new(1)

list.append(2)
list.append(3)
list.append(4)
list.append(5)

list.remove_nth_node(0, 2)
binding.pry
