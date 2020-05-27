class Node
    attr_accessor :left , :right, :value 
    def initialize value 
        @value = value
        @left = nil 
        @right = nil 
    end
end

class Bst
    def initialize val 
        @root = Node.new(val)
    end

    def insert val 
        if(@root == nil)
            @root = Node.new val 
            return 
        end
         
        current = @root 
        new_node = Node.new val 

        while true
            if val < current.value
                if current.left == nil 
                    current.left = new_node
                    return 
                else
                    current = current.left
                end
            elsif val > current.value
                if current.right == nil 
                    current.right = new_node
                    return
                else
                    current = current.right
                end
            end
        end
    end 

    def traverse
        current = @root 
        p current.value
        while current.left != nil 
            p current.left.value
            current = current.left
        end
        current = @root 
        while current.right != nil
            p current.right.value 
            current = current.right
        end
    end

    def find(node = @root, val)
        begin
            return "Found" if node.value == val 
            return self.find(node.left, val) if val < node.value 
            return self.find(node.right, val) if val > node.value 
        rescue
            return "Not Found" if node.value != val 
        # ensure
        #     p "Ensure to always print"
        end
    end

end

bst = Bst.new 10

bst.insert 11 
bst.insert 14
bst.insert 9 
bst.insert 4

bst.traverse 

p bst.find 11
p bst.find 101
