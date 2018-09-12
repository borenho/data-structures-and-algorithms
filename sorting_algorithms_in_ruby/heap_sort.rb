class HeapSort
  # We'll use the max heap, whereby the value of a parent node at any given tree level is greater than the value of its child nodes
  # Remove the root node and push it to a new array
  # Heapify the max heap again so that the new nd largest node is at the root
  # Repeat until sorted

  def self.heap_sort(array)
    limit = array.size - 1
    new_array = array

    (limit / 2).downto(0) do |parent|
      create_max_heap(new_array, parent, limit)
    end

    while limit > 0
      new_array[0], new_array[limit] = new_array[limit], new_array[0]
      limit -= 1

      create_max_heap(new_array, 0, limit)
    end

    puts new_array
  end

  def self.create_max_heap(new_array, parent, limit)
    root = new_array[parent]

    while (child = 2 * parent) <= limit do
      child += 1 if child < limit && new_array[child] < new_array[child + 1]

      break if root >= new_array[child]
      new_array[parent], parent = new_array[child], child
    end

    new_array[parent] = root
  end
end
