module quicksort

fn partition[T](mut arr []T, start T, end T) T {
	pivot := arr[int(start)]

	mut count := 0
	for i := start + 1; i <= end; i++ {
		if arr[i] <= pivot {
			count++
		}
	}

	pivot_index := start + count
	swap(mut arr, pivot_index, start)

	mut i := int(start)
	mut j := int(end)

	for i < pivot_index && j > pivot_index {
		for arr[i] <= pivot {
			i++
		}

		for arr[j] > pivot {
			j--
		}

		if i < pivot_index && j > pivot_index {
			swap(mut arr, i, j)
			i++
			j--
		}
	}

	return pivot_index
}

fn sort[T](mut arr []T, start T, end T) {
	if start >= end {
		return
	}

	p := partition(mut arr, start, end)

	sort(mut arr, start, p - 1)
	sort(mut arr, p + 1, end)
}

fn swap[T](mut arr []T, idx T, idy T) {
	arr[int(idx)], arr[int(idy)] = arr[int(idy)], arr[int(idx)]
}

//sorts an array in place without allocating new array
pub fn in_place[T](mut arr []T) {
	sort(mut arr, 0, arr.len - 1)
}
