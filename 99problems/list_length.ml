(* Reimplement List.length *)
let rec len lst = 
  match lst with
  | [] -> 0
  | _ :: tl -> 1 + (len tl)


(* Not tail-recursive. Needs an accumulator *)