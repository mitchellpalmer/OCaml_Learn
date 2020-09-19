type 'a rle =
  | One of 'a
  | Many of int * 'a;;

let rec dec = function
  | One (a) -> [a]
  | Many (i, a) when i = 1 -> [a]
  | Many (i, a) -> [a] @ (dec (Many (i-1, a)))

let decode lst = List.concat (List.map dec lst)
