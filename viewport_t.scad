//update_viewport
rr=$t*900;
echo($vpr," current: $vpr");
$vpr=[0,rr,rr];
tt=$t*20;
echo($vpt," current: $vpt");
$vpt=[tt,tt,tt];
dd=20+$t*20;
$vpd=[dd,dd,dd];
echo($vpd," current: $vpd");

demo_vpt=false;
module demo_vp(){
    translate([35,35,35,])
    union(){
    cylinder(5);
    translate([5,5,5,]) cone(5);
    }
 }
if(demo_vpt){
    demo_vp();
    }
