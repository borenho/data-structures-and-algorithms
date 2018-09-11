class InsertionSort
  # 1. Assume the first element in the list is in sorted portion of the list and all the remaining elements are in the unsorted portion
  # 2. Pick the first element from the unsorted list and insert that element into the sorted list in the order specified
  # 3. Repeat the above process until all the elements from the unsorted list are moved into the srted list

  def self.sort(array)
    (array.length).times do |index|
      while index > 0
        if array[index - 1] > array[index]
          array[index], array[index - 1] = array[index - 1], array[index]
        else
          break
        end
        index -= 1
      end
    end
    puts array
  end
end
