include <time_slice.scad>;
include <tri.scad>;
include <names.scad>;
include <moves.scad>;
include <colors.scad>;
//include <viewport_t.scad>;

grid_size=80;
x=[grid_size,0,0];
y=[0,grid_size,0];
z=[0,0,grid_size];

show_text=true;
debug_cloop=true;
text_size=1;

module txt_label(label,c,index){
   if(show_text){
      tt_offset=4;
      ttt=2/3*index+tt_offset;
      tt=[ttt,ttt,ttt];
      color(c)        
      translate(tt)
      text(str(label,":",index), size=text_size);
   }
}


function flip(angle) = (angle==180 ? -1: 1);

default_alpha_past=0.42;
echo("default_alpha_past=",default_alpha_past);
function get_alpha(time_sl) = (time_sl==1 ? default_alpha_past: 1);

echo("cloop(ftl,index=0) to place and animate a chain of block in a recursive way, you can try:",
    "cloop([HA]);",
    "cloop([LA,LG]);",
    "cloop([LG,SG,LG]); //diamond",
    "//hexagon!",
    "cloop([LG,SG,LG,HG,LG,SG,LG,HG,LG,SG,LG,]); //3 diamonds to hexagon",
    "also try these:",
    "show_text=true;",
    "text_size=1;",
    "default_alpha_past=0.42;",
    "debug_cloop=true;",
    "randomizing=true;");

echo("cloop:for demo do set $t=1; or use animate to see the animation"); 
//$t=1;
//mv([60,60,60]) cloop([LG,SG,LG]); //diamond
//mv([60,60,60]) cloop([LG,SG,LG,HG,LG,SG,LG,HG,LG,SG,LG,]); //3 diamonds to hexagon
demo_cloop=false;
if(demo_cloop){
 mv([120,120,120]) 
 cloop([HM, US, LA, SA,LG]);
}

//cloop_vpt=true;
module cloop(ftl,index=0){
    //if(debug_cloop){echo("cloop_vpt=",cloop_vpt);}
    //if(cloop_vpt){vpt($t);}

    if(debug_cloop){echo("len=",len(ftl));}
    if(debug_cloop){echo("index=",index);}
    total=len(ftl)+index;
    if(debug_cloop){echo("total=",total);}    
    c=colors[index];
    
    if(debug_cloop){echo("c=",c);}
    color=[c,c,c,c];
    if(debug_cloop){echo("ftl=",ftl);}
    if(debug_cloop){echo("$t=",$t);}    
    t=ftl[0][1];
    r=ftl[0][0];
    name=ftl[0][2];
    if(debug_cloop){echo("name=",name);}
    //if(name==prevname){
    //    echo("TODO: name==prevname,skip, warn: do somthing!!");
    //}
    if(debug_cloop){echo("t=",t);}
    if(debug_cloop){echo("r=",r);}
    TS=ts($t,index,len(ftl));
    if(debug_cloop){echo("TS:",TS);}
      
    
    ft=[t[0]*flip(r[0]),
        t[1]*flip(r[1]),
        t[2]*flip(r[2])];
    if(debug_cloop){echo("ft=",ft);}
    if(len(ftl)>0){
        union(){
            color(c,get_alpha(TS))
            mtri();
            union(){
                //TODO: use moves mr_x,mr_y,mr_z...
                translate(-1*TS*[ft[0],0,0])
                rotate(-1*TS*[r[0],0,0])
                translate(-1*TS*[0,ft[1],0])
                rotate(-1*TS*[0,r[1],0])
                translate(-1*TS*[0,0,ft[2]])
                rotate(-1*TS*[0,0,r[2]])            
                cloop([for(i=[1:1:len(ftl)-1]) (ftl[i])],index+1,name);
            }
            
        }}
      
      if(len(ftl)==0){
        mtri();
        txt_label("last",c,index);
      }
      else{
        txt_label(ftl[0][2],c,index);
      }
}
