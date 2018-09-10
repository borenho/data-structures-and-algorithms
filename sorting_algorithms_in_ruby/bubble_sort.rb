class BubbleSort
  # The idea behind bubble sort is that the larger elements will 'bubble' towards the end and the
  # smaller elements will 'bubble' towards the beginning until all the elements are sorted in order.
  # The algorithm starts at the beginning of the array, compares each element with the element
  # immediately to the right of it

  def self.sort(array)
    return array if array.size <= 1

    swap = true

    while swap
      swap = false # No swaps done yet, the loop just began
      (array.length - 1).times do |x|
        if array[x] > array[x + 1]
          array[x], array[x + 1] = array[x + 1], array[x]
          swap = true
        end
      end
    end

    puts array
  end
end
