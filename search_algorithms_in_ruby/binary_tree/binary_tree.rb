module BinaryTree
  class BinaryTree
      # A binary tree is a tree data structure in which each node has at the most two children, called the left child and the right child
      # Each node has three attributes, the value(node data), the left_child and the right_child

      # attr_accessor :value, :left_child, :right_child

    def initialize(value)
      @value = value
      @left_child = nil
      @right_child = nil
    end

    def insert_left(value)
      if @left_child.nil?
        @left_child = BinaryTree.new(value)
      else
        new_node = BinaryTree.new(value)
        new_node.left_child = @left_child
        @left_child = new_node
      end
    end

    def insert_right(value)
      if @right_child.nil?
        @right_child = BinaryTree.new(value)
      else
        new_node = BinaryTree.new(value)
        new_node.right_child = @right_child
        @right_child = new_node
      end
    end

    def depth_first_search     # Using in_order traversal technique
      if @left_child
        @left_child.in_order_traversal
      end

      puts value

      if @right_child
        @right_child.in_order_traversal
      end
    end

    def breadth_first_search
      queue = Queue.new
      queue << queue

      while not queue.empty
        current_node = queue.pop
        puts current_node.value

        if current_node.left_child
          queue << current_node.left_child
        end

        if current_node.right_child
          queue << current_node.right_child
        end
      end
    end
  end
end
