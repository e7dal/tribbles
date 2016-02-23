echo("Version:",version());

s=4;                     echo("size:s=",s);
mf=8;                    echo("minkowski_factor:mf=",mf);
ms=s*9/mf;               echo("minkowski_size:ms=",ms);
sh=s/2;                  echo("size half:sh=",sh);
shh=sh/2;                echo("size half half:shh=",shh);
sq3=sqrt(3);             echo("square root 3:sq3=",sq3);
s3=s*sq3;                echo("size times sq3:s3=",s3);
s3h=s3/2;                echo("size times sq3 half:s3h=",s3h);
//fh=s3/2;                 echo("fh=",fh);
//f34=3*s3/4;              echo("f34=",f34);
//f2ms3=2-s3;              echo("f2ms3=",f2ms3);
//fx=1-f2ms3;              echo("fx=",fx);
//s30=sin(30);             echo("s30=",s30);
//c30=cos(30);             echo("c30=",c30);
//lmfh=2-fh;               echo("lmfh=",lmfh);

//XP=fx*s30;echo("XP=",XP);
//ZP=fx*c30;echo("ZP=",ZP);

//include <"time_slice.scad">;

//tri();
module _tri(){
 translate([0,-s3h,-s])
  color("green")
  linear_extrude(height=s*2){
    polygon(points=[[-sh,0],
                    [sh,0],
                    [sh,s3]]);
  }
}

module tri(){
 color("blue")
    _tri();
  
}

//mtri();
module mtri(){
    $fn=60;
    color("orange")
    minkowski(){
        _tri();
        sphere(s/mf);
        }
    }
