module quicksort

pub fn sort[T](mut array []T) {
	if array.len <= 1 {
		return
	}

	pivot := array.len / 2
	pivotval = array[pivot]
	mut low := 0
	mut high := array.len - 1

	for {
		if array[low] >= pivotval {
			swap(array)
		}
	}
}

fn swap[T](mut array []T, id1 usize, id2 usize) {
	array[id1], array[id2] = array[id2], array[id1]
}