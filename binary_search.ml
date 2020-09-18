let s = [| 2; 3; 4; 5; 6 |]

let rec search arr v = 
  let arr_len = Array.length arr in
  let mid_idx = arr_len/2 in 
  let middle = arr.(mid_idx) in
  match (middle-v) with
  | 0 -> mid_idx
  | diff -> (match (diff>0) with 
      | true -> search (Array.sub arr 0 mid_idx) v
      | false -> search (Array.sub arr (mid_idx+1) (arr_len - (mid_idx+1))) v
    )
;;

search s 3
