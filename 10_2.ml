#use "10_1.ml" 
 
(* sap xep cac phan tu trong mang theo thu tu tang dan *) 
(* ins_sort : int list -> int list *) 
let rec ins_sort lst = match lst with    (*ins_sort la ten ham; lst la truyen vao 1 lst*)
    [] -> [] 
  | first :: rest -> insert (ins_sort rest) first  (*su dung ham insert de sap xep; n: la phan tu dau tien cua lst; lst: la phan con lai*)
 
(* test *) 
let test1 = ins_sort [] = [] 
let test2 = ins_sort [1] = [1] 
let test3 = ins_sort [3; 1] = [1; 3] 
let test4 = ins_sort [1; 3] = [1; 3] 
let test5 = ins_sort [5; 3; 8; 1; 7; 4]   
(* cach hoat dong : vd 5
   dau tien se tach ins_sort lst dau vao lam 2 phan la : lst= [3;8;1;7;4] va so tu nhien n=5
   dung thuat toan sap xep o bai 10.1 ta se co: ins_sort lst = insert (ins_sort [3;8;1;7;4]) 5    ---> 1 3 4 5 7 8     (6)
   * o day lai xet toi ham ins_sort [3;8;1;7;4] = insert (ins_sort [8;1;7;4]) 3  ---> 1 3 4 7 8     (5)
   * tiep tuc nhu v ...
    ins_sort [8;1;7;4] = insert (ins_sort [1;7;4]) 8  ---> 1 4 7 8      (4)
    ins_sort [1;7;4] = insert (ins_sort [7;4]) 1    --->1 4 7     (3)
    ins_sort [7;4] =insert (ins_sort [4]) 7    --->4 7  (2)
    ins_sort [4] =insert (ins_sort []) 4  -->4  (1)
    ins_sort [] = []  khi toi day ham se tinh nguoc len vi da het vong lap de quy

*)
