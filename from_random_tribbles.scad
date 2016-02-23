include <cloop_recursive.scad>;
include <random.scad>;
/*this sucks!
set time in animate to one, steps=0
*/
//$t=1;
show_text=false;
//randomizing=true;
debug_cloop=false;
debug_names=false;
//if($t==0){$t=1;}
//$vpr = [$t * 360, $t * 360, $t * 360];
$vpr = [0,$t * 360, 0];
$vpd = [0,60+$t * 120, 0];



rlnames= ["LG", "LA", "SA", "HA", "LG", "HH", "SA", "TH", "HM", "TM", "TH", "LA", "TM", "TH", "HM", "SA", "SG", "TH", "HA", "TM", "SG", "TM", "HM", "TM", "TH", "SG", "LG", "HH", "HM", "SG", "LA", "TH", "HH", "SA", "LG", "SA", "HM", "SA", "TH", "HA", "HM", "TM", "LG", "HA", "HH", "LG", "SA", "HA", "HM", "SA"];

//rlnames=["HM", "LA", "HM", "US", "SG", "TH", "SG"];
//rlnames=["SG", "LG", "SG", "LA", "HM", "TH", "HA", "SA", "TM", "HA", "SA", "HA", "LA", "TM"];
//rlnames= ["SG", "TM", "LG", "TH", "SA", "HM", "HA", "HM", "SG", "LA"];
//rlnames= ["HM", "HA", "HM"];
//rlnames= ["HM", "SA", "HM", "SA", "TM", "SG", "HM", "LA", "SA", "HA", "SG", "LA"];

//rlnames=[ "SA", "SG"];
//rlnames=[ "SG"];
//rlnames=[ "US","US","US","US"];



//rlnames=  ["SA", "HM", "LG", "SA", "TH","SA", "HM", "LG", "SA", "TH","SA", "HM", "LG", "SA", "TH","SA", "HM", "LG", "SA", "TH" ];
echo("rlnames=",rlnames);

rl=[for (i=[0:1:len(rlnames)-1]) t2_by_name[find_id_by_name(rlnames[i])]]; 

cloop(rl); 

//show_text=true;

//tl=[LG,TM,LG,HG,HM,SG];
//hexagon!
//$1=1;
//tl=[LG,HG,LG,HG,LG,HG,LG,HG,LG,HG,LG];
//cloop(tl);
//tl=[LA];
//tl=[TH,LA,LG,SA,SG,LA,LG,SA,SG,LA,LG,SA,SG,LA,LG,SA,TM];

//tl=[TH,TH,TH,TH,TH,TH,TH,TH];cloop(tl);
//tl=[TM,TM,TM,TM,TM,TM,TM,TM];
//cloop(tl);
//gs=30;
//ps=[gs,gs,gs];
//move(-1*ps)
//cloop([LG,HG,LG,HG,LG,HG,LG,HG,LG,HG,LG]);
//translate([10,10,10])
//rotate([0,90,0])
//cloop([LG,HG,LG,HG,LG,HG,LG,HG,LG,HG,LG]);


//move(-2*ps) cloop([HM,LA,HG,LA,HG,LA,HG,LA,HG,LA,HG,LA,HG,LA,HH]);

//move(-3*ps)
//cloop([TH,SA,TH,SA,TH,SA,TH,SA,TH,SA,TH,SA,TH,SA,TH,SA,TH,SA]);

//move(-4*ps)
//cloop([SA,LA,SA,LA,SA,LA,SA,LA,SA,LA,SA,LA,SA,LA,SA,LA]);

//move(-5*ps) cloop([TH,TH,TH,TH]);
//cloop([TM,TM,TM,TM,HG]);

//move(-6*ps)
//cloop([LA,SA,LA,SA,LA,SA,LA,SA]);

//move(-7*ps)
//cloop([HA,LA,HA,HA,HA,LA,HA,LA,HA,HA,HA,LA,HA]);
//cloop([HA,LA,HA,LA,HA,LA,HA,LA,HA]);
//cloop([HA,SA,HA,SA,HA,SA,HA,SA,HA]);


//cloop([TH,HH,SA,LA]);
//cloop([HH,LA,HM,LA]);
/*cloop([TH,TH,TH,
       HA,LA,HA,LA,HA,LA,HA,
       TM,TM,TM,TM,TM,TM,
       HA,LA,HA,LA,HA,LA,HA,
       TH,TH,TH]);*/
       
//cloop([HA,SA,HA,SA,HM,TM,TM,TM,TM,HH,SA,HA,SA,HA]);
/*cloop([HA,SA,HA,SA,HA,
       LG,HA,LG,HA,LG,HA,
       SA,HA,SA,HA,LG,HA,LG]);*/
//,SA,HA,SA,SA,HA,SA,HG,SA]);
       
