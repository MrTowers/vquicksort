## QuickSort algorithm in V

### Instalation
```bash
    v install MrTowers.quicksort
```

### Usage
```v
    import mrtowers.quicksort as qs

    fn main() {
        mut arr x := [5, 6, 2, 8]
        qs.in_place(mut x)
        println(x) // [2, 5, 6, 8]
    }
```

### Contribution
To contribute just use `v fmt -w .` before PR