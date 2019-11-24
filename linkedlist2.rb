class LinkedListNode 
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end

def print_values(list_node)
	if list_node
		print "#{list_node.value} --> "
		print_values(list_node.next_node)
	else
		print "nil\n"
		return
	end
end

def reverse_list(list, previous=nil)
	if list
		next_node = list.next_node
		list.next_node = previous
		reverse_list(next_node, list)
	end
end

def infinite_loop?(list)
	turtle = list.next_node
	hare = list.next_node

	until hare.nil?
		hare = hare.next_node
		return false if hare.nil?

		hare = hare.next_node
		turtle = turtle.next_node
		return true if hare == turtle
	end 

	return false

end

node1 = LinkedListNode.new(9)
node2 = LinkedListNode.new(62, node1)
node3 = LinkedListNode.new(34, node2)
node4 = LinkedListNode.new(40, node3)
node5 = LinkedListNode.new(50, node4)

print_values(node5)
puts "========================"
reverse_list(node5)
print_values(node1)
#puts infinite_loop?(node5)
#node1.next_node = node5
#puts infinite_loop?(node5)
