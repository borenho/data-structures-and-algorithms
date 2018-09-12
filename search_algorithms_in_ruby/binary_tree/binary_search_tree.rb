module BinaryTree
  class BinarySearchTree
    # This class takes care of nil instances
    class EmptyNode
      def to_a
        []
      end

      def include?(*)
        false
      end

      def push(*)
        false
      end
      alias << push

      def inspect
        '{}'
      end
    end

    # Class to create nodes
    class Node
      attr_reader :value
      attr_accessor :left_child, :right_child

      def initialize(val)
        @value = val
        @left_child = EmptyNode.new
        @right_child = EmptyNode.new
      end

      def push(val)
        case value <=> val
        when 1 then push_left(val)
        when -1 then push_right(val)
        when 0 then false # The valueis already present
        end
      end
      alias << push

      def include?(val)
        case value <=> val
        when 1 then left_child.include?(val)
        when -1 then right_child.include?(val)
        when 0 then true # The current node is equal to the value
        end
      end

      def inspect
        "{#{value}: #{left_child.inspect} | #{right_child.inspect}}"
      end

      def to_a
        left_child.to_a + [value] + right_child.to_a
      end

      private

      def push_left(val)
        left_child.push(val) or self.left_child = Node.new(val)
      end

      def push_right(val)
        right_child.push(val) or self.right_child = Node.new(val)
      end
    end
  end
end

# Tis Works! :smile
# Examples to test
# On irb, create a new tree with: bst = BinaryTree::BinarySearchTree::Node.new(15)
# Then add/push/insert new nodes to the tree: bst.push(16), bst.push(17), bst.push(14), bst.push(13)
# Check whether this value exists: bst.include?(17) => true, bst.include?(10) => false
