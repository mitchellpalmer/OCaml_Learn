
let rec compressor prev lst =
  match lst with
  | [] -> []
  | this :: rest -> (if this = prev 
                     then (compressor this rest) (* i.e., leave this one off *)
                     else (this :: (compressor this rest))) 

let compress lst = (compressor "" lst)