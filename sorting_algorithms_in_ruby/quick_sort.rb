class QuickSort
  # Pick a random element on the array, make it the pivot
  # Compare the pivot with each element, moving smaller elemnts to the left array and greater ones to the right array
  # Return the smaller elements(left array), then the pivot(is the midman), then the right elements which were bigger
  def self.quick_sort(array)
    return array if array.size <= 1

    pivot_item = array.delete_at(rand(array.size))

    left = Array.new
    right = Array.new

    array.each do |x|
      if x <= pivot_item
        left << x
      else
        right << x
      end
    end

    puts *quick_sort(left), pivot_item, *quick_sort(right)
  end
end
# Bug, this algorithm works only with non-duplicate values, submit a pull-request and let's fix this together! :smile
