include <cloop_recursive.scad>;
include <random.scad>;
/*this sucks!
set time in animate to one, steps=0
*/
show_text=false;
debug_cloop=false;
debug_names=false;
randomizing=true;


function random_tri_number() =ceil(random()*(len(t2_all_names)-1));
//rloop();
//rsize=24;
rsize=5+ceil(random()*10*len(t2_by_name));
rsize=42;


function rlist()= [for (i=[1:1:rsize]) t2_by_name[random_tri_number()] ];
//$t=1;
rl=rlist();
echo("rl=",rnames(rl));
echo("len(rl)=",len(rl));

function rnames_uniq(rl)= [for (i=[0:1:len(rl)-1]) if(rl[i][2]!=rl[i+1][2]) rl[i]];
rlnames_uniq=rnames_uniq(rl);

echo("len(rlnames_uniq)==len(rl)=",len(rlnames_uniq)==len(rl));
echo("rlnames_uniq=",rnames(rlnames_uniq));
echo("len(rlnames_uniq)=",len(rlnames_uniq));


//face is first letter of name, which is in the third element
function rnames_uniq_face(rl)= [for (i=[0:1:len(rl)-1]) if(rl[i][2][0]!=rl[i+1][2][0]) rl[i]];
    
rlnames_uniq_faces=rnames_uniq_face(rlnames_uniq);

echo("len(rlnames_uniq)==len(rlnames_uniq_faces)=",len(rlnames_uniq)==len(rlnames_uniq_faces));
echo("rlnames_uniq_faces=",rnames(rlnames_uniq_faces));
echo("len(rlnames_uniq_face)=",len(rlnames_uniq_faces));




cloop(rlnames_uniq_faces);


function rnames(rl)= [for (i=[0:1:len(rl)-1]) rl[i][2] ];
//rlnames=rnames(rlnames_uniq_faces);
//echo("rlnames=",rlnames);
//cloop(rl); 

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
       
