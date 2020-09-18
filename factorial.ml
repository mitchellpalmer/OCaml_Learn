let rec factorial n =
  match n with
  | 0 -> 0
  | 1 -> 1
  | n -> n * factorial(n-1)
;;



print_int (factorial 6)