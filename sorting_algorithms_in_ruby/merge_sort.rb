class MergeSort
  def self.merge_sort(array)
    n = array.size
    return array if n <= 1

    mid = (n / 2).floor
    left = array[0...mid]
    right = array[mid...n]

    merge(merge_sort(left), merge_sort(right))
  end

  def self.merge(left, right)
    sorted_array = []

    until left.empty? || right.empty?
      if left.first <= right.first
        sorted_array << left.shift
      else
        sorted_array << right.shift
      end
    end

    puts sorted_array.concat(left).concat(right)
  end
end
