(* them phan tu vao mang tang dan*) 
(* insert : int list -> int -> int list *) 
let rec insert lst n = match lst with (*  insert la ten ham; lst: la nhap 1 mang; n : la so nguyen*)
    [] -> [n] 
  | first :: rest -> 
      if first < n then first :: insert rest n (*neu so dau tien nho hon n thi tra lai so dau tien va de quy phan con lai*)
      else n :: lst (* neu so dau tien lon hon n thi tra ve n *)
 
(* test *) 
let test1 = insert [] 3 = [3] 
let test2 = insert [1] 3 = [1; 3] 
let test3 = insert [3] 1 = [1; 3] 
let test4 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8] 
let test5 = insert [1;5;3;4;6;8;9] 7