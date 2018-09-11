class SelectionSort
  # 1. Select the first element in the array
  # 2. Compare the selected element with all other elements on the array
  # 3. For every comparison, if any element is smaller tha the selected element, then swap them
  # 4. Repeat with elemnt in the next position until the array is sorted

  def self.sort(array)
    n = array.length - 1

    n.times do |i|
      min_index = i

      (i + 1).upto(n) do |j|
        min_index = j if array[j] < array[min_index]
      end

      array[i], array[min_index] = array[min_index], array[i] if min_index != 1
    end

    puts array
  end
end
