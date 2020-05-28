class Node
    attr_accessor :next_node , :value 
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

class LinkedList
    attr_accessor :head , :tail 
    def initialize(value)
        @head = Node.new value         
        @tail = nil 
    end

    def add val 
        current = @head 
        @tail = current
        while !current.next_node.nil?
            current  = current.next_node
        end
        current.next_node = Node.new val
        @tail = current.next_node
    end

    def shift val 
        current = Node.new val  
        while true 
            if @head == nil 
                @head = current
                break  
            else
                tmp = @head 
                @head = current
                @head.next_node = tmp 
                break
            end
        end
    end

    def pop
        current = @head
        while current.next_node != nil 
            previous = current
            current = current.next_node
        end
        previous.next_node = nil 
        p previous, current
    end

    def unshift
        current = @head 
        if current != nil 
            tmp_next = current.next_node 
            @head = tmp_next
        end
    end

    def show
        current = @head 
        while(current != nil)
            p current.value
            # p current
            # p current.next_node.nil?
            current = current.next_node 
        end
    end
end

sll = LinkedList.new -1

5.times do |i| 
    sll.add i 
end

sll.show 

p "========================"
sll.shift 121
sll.show 

p "========================"
sll.unshift
sll.show

p "========================"
sll.pop 
sll.show

p "========================"
p sll.tail 