(* Reimplement List.rev *)

let rec reverse lst =
  match lst with
  | [] -> []
  | hd :: tl ->  (reverse tl) @ [hd]

let palindrome lst = (lst = (reverse lst))