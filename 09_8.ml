(*  ex05_3.ml, ex08_3.ml  *) 
#use "05_3.ml" 
#use "08_3.ml" 
 
(* person_t list  *) 
let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person2] 
let lst4 = [person1; person2; person3] 
let lst5 = [person2; person1; person1] 
 
(*乙女座の人の名前のみからなるリストを返す関数　otomeza をデザインレシピ *)

(* otomeza : person_t list -> string list *) 
let rec otomeza lst = match lst with 
    [] -> [] 
  | {name = n; shincho = s; taiju = t; tsuki = ts; hi = h; 
     ketsueki = k} :: rest -> 
      if seiza ts h = "乙女座" then n :: otomeza rest  (* seiza : 星座 cung hoang dao*)
			       else otomeza rest 
 
(* �ƥ��� *) 
let test1 = otomeza lst1 = [] 
let test2 = otomeza lst2 
let test3 = otomeza lst3 = [] 
let test4 = otomeza lst4 
let test5 = otomeza lst5 
