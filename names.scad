include <tri.scad>;
//Hypotenusa
//Short
//Long
//Triangle (UP,DOWN)
//
//with orientations:
//Gyaku(opposite) and Ai(same)
//Hidari(left) and Migi(right)
//Single(s) in case of a triangle Up or Down

H=[["G","A","H","M"],"Hypotenusa"];
S=[["G","A"],"Short"];
L=[["G","A"],"Long"];

//T=[["H","M"],"Triangle"];
//TODO: this means there is an US and a DS instead of the TH and TM
// consider Jodan J and Gedan

U=[["S"],"UpTriangle"];   //the other triangle...
D=[["S"],"DownTriangle"]; //the other triangle...


face_names=["H","S","L","U","D"];
faces=[H,S,L,U,D];

echo("face_names=",face_names);

echo("faces=",faces);
//HG: hypotenusa gyaku
HG=[[180,0,120],
    [0,0,0],
    "HG"];
//HA: Hypotenusa ai
HA=[[180,180,0],
    [0,0,0],
    "HA"];
//HH: hypotenusa hidari
HH=[[90,-30,150],
    [0,0,0],
    "HH"];
//HM: Hypotenusa migi
HM=[[-90,30,150],
    [0,0,0],
    "HM"];

//SG: short gyaku
SG=[[180,0,0],
    [0,-s3,0],
    "SG"];  
//SA: short ai
SA=[[0,0,180],
    [0,s3,0],
    "SA"];

//LG: long gyaku
LG=[[0,180,0],
    [-s,0,0],
    "LG"];
//LA: long ai
LA=[[0,0,180],
    [-s,0,0],
    "LA"];

//TH: triangle hidari
//US: triangle Up single
US=[[0,0,0],
    [0,0,s*2],
    "US"];
//TM: triangle migi
//DS: triangle Down single
DS=[[0,0,0],
    [0,0,-s*2],
    "DS"];

//from t2_all_names
//TODO:- add occupied "BLOCKS" 
//     - add missing sides
//     - use ms, to adjust for minkowski sums increased size

t2_by_name=[
   HG,HA,HH,HM,
   SG,SA,
   LG,LA,
   US,DS
];

echo("t2_by_name=",t2_by_name);

//can do this in a loop...
t2_all_names=[
   "HG","HA","HH","HM",
   "SG","SA",
   "LG","LA",
   "US","DS"
];
echo("t2_all_names=",t2_all_names);

function find_id_by_name(name)=[for (i=[0:1:len(t2_all_names)-1]) if(t2_all_names[i]==name) i][0]; 
echo("find_id_by_name=",find_id_by_name("SG"));
