type 'a node =
  | One of 'a 
  | Many of 'a node list

let rec flatten node = 
  match node with
  | One n -> [n]
  | Many nodes  -> List.concat(List.map flatten nodes)

let flatten_nested_list nodes = 
  List.concat(List.map flatten nodes)

(*flatten_nested_list([ One "a" ; Many [ One "b" ; Many [ One "c" ; One "d" ] ; One "e" ] ]) *)