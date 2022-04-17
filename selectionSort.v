fn selection_sort(mut items[]int) {
	length := items.len
	for i := 0; i < length; i++ {
		for j := i + 1; j < length; j++ {
			if items[j] < items[i] {
				items[i], items[j] = items[j], items[i]
			}
		}
	}
}

mut arr := [64, 22, 32, 21, 82, 11]
println("not sorted test array: $arr")
selection_sort(mut arr)
print("sorted test array: $arr")
