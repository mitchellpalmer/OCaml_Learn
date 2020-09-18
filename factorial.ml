let rec factorial n =
  match n with
  | 0 -> 0
  | 1 -> 1
  | n -> n * factorial(n-1)
;;


let v = read_int() in
print_int (factorial v)
;;