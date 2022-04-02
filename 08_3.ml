(* レコード型　person_t*) 
type person_t = { 
  name : string;	
  shincho : float;
  taiju : float;	
  tsuki : int;		
  hi : int;		
  ketsueki : string;	
} 
 
let person1 = 
  {name = "平賀"; 
   shincho = 1.72; 
   taiju = 58.5; 
   tsuki = 9; 
   hi = 17; 
   ketsueki = "A" 
} 
 
let person2 = { 
  name = "酒井"; 
  shincho = 1.63; 
  taiju = 55.0; 
  tsuki = 6; 
  hi = 30; 
  ketsueki = "B" 
} 
 
let person3 = { 
  name = "小笠原"; 
  shincho = 1.68; 
  taiju = 63.0; 
  tsuki = 6; 
  hi = 6; 
  ketsueki = "O" 
} 
