(* second problem in 99 problems *)

let rec penultimise lst = 
  match lst with
  | [] -> None
  | penultimate :: final :: [] -> Some (penultimate, final) (*  Exactly two items, followed by empty list *)
  | _ :: tl -> penultimise (tl) (* Remove the first element, run again with remaining *)

