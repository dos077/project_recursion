def merged_sort(array)
    sorted = []
    return array if array.length <= 1
    left_array = merged_sort( array.slice!(0, array.count/2) )
    right_array = merged_sort(array)
    ( left_array.count + right_array.count ).times do
        if left_array.empty?
            sorted << right_array.slice!(0)
        elsif right_array.empty?
            sorted << left_array.slice!(0)
        else
            sorted << ( ( left_array[0] > right_array[0] )? right_array.slice!(0) : left_array.slice!(0) )
        end
    end
    sorted
end

puts merged_sort([4,3,2,1])