fn bubblesort(mut array []int) {
	for i := 0; i < array.len - 1; i++ {
		for j := 0; j < array.len - i - 1; j++ {
			if array[j] > array[j + 1] {
				array[j], array[j + 1] = array[j + 1], array[j]
			}
		}
	}
}

mut arr := [64, 22, 32, 21, 82, 11]
println("not sorted test array: $arr")

bubblesort(mut arr)
println("sorted array")
println(arr)