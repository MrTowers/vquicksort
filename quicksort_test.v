module quicksort

import rand

fn test_quicksort() {
	mut arr := [6, 5, 2, 3]
	in_place(mut arr)
	assert arr == [2, 3, 5, 6]

	arr.clear()
	for i in 0 .. 5000000 {
		arr << rand.int_in_range(0, 100) or { panic(err) }
	}
}
