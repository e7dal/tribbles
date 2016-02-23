module mv(t)
{ echo("mv_ing=",t);
    translate(t)children(); }

module rt(t)
{ echo("rt_ing=",t);
    translate(t)children(); }


module mr(t,r)
{ echo("mr:moving=",t);
  echo("mr:rotating=",r);
    translate(t)
    rotate(r)
    children(); }


module mr_x(t,r)
{ echo("mr_x:moving=",t[0]);
  echo("mr_y:rotating=",r[0]);
    translate([t[0],0,0])
    rotate([r[0],0,0])
    children(); }
    
module mr_y(t,r)
{ echo("mr_y:moving=",t[1]);
  echo("mr_y:rotating=",r[1]);
    translate([0,t[1],0])
    rotate([0,r[0],0])
    children(); }
    
module mr_z(t,r)
{ echo("mr_z:moving=",t[2]);
  echo("mr_z:rotating=",r[2]);
    translate([0,0,t[2]])
    rotate([0,0,r[2]])
    children(); }
    
