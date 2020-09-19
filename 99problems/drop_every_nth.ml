(* Drop every N'th element from a list *)

let drop_if_nth n ix el =
  match (ix+1) mod n with
  | 0 -> []
  | _ -> [el]

let drop lst n = (List.concat (List.mapi (drop_if_nth n) lst))