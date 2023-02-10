require 'byebug'
require_relative './node'

class LinkedList
attr_accessor :head

    def initialize
        @head = nil
    end

    def prepend(node)
        if head.nil?
            self.head = node
            return
          end
        second_node=self.head
        self.head=node
        self.head.next_node=second_node
    end

    def append(node)
        # Add element to the beginning of the list if the list is empty
        if head.nil?
          self.head = node
          return
        end
    
        # Otherwise, traverse the list to find the last node
        last_node = head
        while last_node.next_node
          last_node = last_node.next_node
        end
    
        # and add the node to the end
        last_node.next_node = node
      end

      def delete_head 
        if @head.nil?
           return
        end
        self.head=self.head.next_node
      end

end

li=LinkedList.new
li.append(Node.new("mode A"))
li.append(Node.new("mode B"))
li.append(Node.new("mode C"))
li.prepend(Node.new("mode Zero"))
li.delete_head

puts li.head.data

