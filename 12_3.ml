#use "ex12_1.ml" 

let eki_list = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 
 
(* shokika : eki_t list -> string -> eki_t list *) 
let rec shokika eki_list kiten = match eki_list with 
    [] -> [] 
  | ({namae = k; saitan_kyori = s; temae_list = t} as first) :: rest ->  (*as trang 88 co giai thich*)
      if k = kiten 
      then {namae = k; saitan_kyori = 0.; temae_list = [k]} 
	   :: shokika rest kiten 
      else first :: shokika rest kiten 
 
(* test *) 
let test1 = shokika [] "池袋" = [] 
let test2 = shokika eki_list "後楽園" = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = 0.; temae_list = ["後楽園"]}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 
