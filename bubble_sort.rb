#Accept input array, initialize array index to 0 and assume no values will be swapped
def bubble_sort array 
    n = 0
    swapped = false
    #Compare each adjacent pair of values in the array, swap if first is greater than second
    while n < (array.length - 1)
        if array[n] > array [n+1]
            array[n], array[n+1] = array[n+1], array[n]
            #Set swap indicator to true
            swapped = true
        end
        n += 1
    end
    #If any numbers were swapped, need to take another pass through the array
    if swapped == true
        array = bubble_sort(array)
    #If no numbers were swapped, array is already in order!
    else
        array.join(" ")
    end
end

puts bubble_sort([4,3,78,2,0,2])
