

let rec search arr v = 
  let arr_len = Array.length arr in
  let mid_idx = arr_len/2 in 
  let middle = arr.(mid_idx) in
  match (middle-v) with
  | 0 -> true
  | diff -> (match(arr_len) with 
      | 0 -> false
      | 1 -> false
      | _ -> (match (diff>0) with 
          | true -> search (Array.sub arr 0 (mid_idx + 1)) v
          | false -> search (Array.sub arr (mid_idx+1) (arr_len - (mid_idx+1))) v
        )
    )
;;

let () =
  let to_search = (read_line()
                   |> Str.split (Str.regexp " +") 
                   |> List.map int_of_string)
                  |> List.sort Int.compare 
                  |> Array.of_list in

  let to_find = read_int() in

  match (search to_search to_find) with
  | true -> print_string "Found" 
  | false -> print_string "Not found"

;; 