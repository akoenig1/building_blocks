#Accept input array
#Compare first two values - switch if first is greater than second
#Repeat this process with the second and third values and adjacent pairs through the rest of the array
#Run the above process on the array again but only for array.length - 1 because we know the largest number made it to the last spot already
#Continue running the above process through array.length = 2
#Keep track of swaps on each pass through array. If no swaps are made in a full pass through array, we know the numbers are in order