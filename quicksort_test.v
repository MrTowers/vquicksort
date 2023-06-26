module quicksort

import rand

fn test_quicksort() {
	mut arr := [6, 5, 2, 3]
	in_place(mut arr)
	assert arr == [2, 3, 5, 6]
}
