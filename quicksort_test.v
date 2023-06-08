module quicksort

fn test_quicksort() {
	mut arr := [6, 5, 2, 3]
	sort(mut arr)
	assert arr == [2, 3, 5, 6]
}
