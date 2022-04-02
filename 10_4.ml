#use "08_3.ml" 
let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person1; person2] 
let lst4 = [person2; person1] 
let lst5 = [person3; person1; person2] 
 
(* person1, person2, person3 ������ˤĤ��Ƥ� ex08_3.ml �򻲾� *) 
 
(* person_insert : person_t list -> person_t -> person_t list *) 
let rec person_insert lst person0 = match lst with 
    [] -> [person0] 
  | ({name = n; shincho = s; taiju = t; tsuki = ts; hi = h; ketsueki = k} 
     as person) :: rest -> 
      match person0 with 
        {name = n0; shincho = s0; taiju = t0; 
	 tsuki = ts0; hi = h0; ketsueki = k0} -> 
	  if n < n0 then person :: person_insert rest person0 
	  else person0 :: lst 
 
(* test *) 
let test1 = person_insert [] person1 = [person1] 
let test2 = person_insert [person2] person1 = [person2; person1] 
let test3 = person_insert [person1] person2 = [person2; person1] 
let test4 = person_insert [person1; person2] person3 
	    = [person1; person2; person3] 
 
(* person_ins_sort : person_t list -> person_t list *) 
let rec person_ins_sort lst = match lst with 
    [] -> [] 
  | first :: rest -> person_insert (person_ins_sort rest) first 
 
(* test *) 
let test5 = person_ins_sort lst1 = [] 
let test6 = person_ins_sort lst2 = [person1] 
let test7 = person_ins_sort lst3 = [person2; person1] 
let test8 = person_ins_sort lst4 = [person2; person1] 
let test9 = person_ins_sort lst5 = [person2; person1; person3] 
