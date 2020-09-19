(* encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];; *)

let rec enc prev count remaining =
  match remaining with
  | [] -> []
  | this :: [] -> [(count+1, this)] (* Handle last element *)
  | this :: rest -> (if this = prev || prev = "" (* Or statement is to handle initial call *)
                     then enc this (count+1) rest
                     else [(count, prev)] @ (enc this 1 rest))

let encode lst = (enc "" 0 lst)