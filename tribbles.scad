include <cloop_recursive.scad>;
show_text=false;
//show_text=true;
include <viewport_t.scad>;
demo_vpt=false;
//demo_vpt=true;

demo_cloop=false;

tl=[LG,HG,LG,HG,LG,HG,LG,HG,LG,HG,LG,
    SG,LG,HG,LG,HG,LG,HG,LG,HG,LG,HG,LG,
    SG,LG,HG,LG,HG,LG,HG,LG,HG,LG,HG,LG];

tl=[LG,HG,LG,HG,LG,HM,
    LG,HG,LG,HG,LG,HH,
    LG,HG,LG,HG,LG,HM,
    LG,HG,LG,HG,LG
    ];

tl=[LG,HH,LG,HH,
    LG,HM,LG,HM,
    LG,HH,LG,HH,
    LG,HM,LG,HM,
    LG,HH,LG,HH,
    LG,HM,LG,HM
    
    //LG,HG,LG,HG,LG,HM,
    //LG,HG,LG,HG,LG
    ];
//hexagon ring
tl=[LG,HA,LG,HA,LG,HG,
    LG,HA,LG,HA,LG,HG,
    LG,HA,LG,HA,LG,HG,
    LG,HA,LG,HA,LG,HG,
    LG,HA,LG,HA,LG,HG,
    LG,HA,LG,HA,LG
    ];

//almost ring, rotated, does not close
//tl=[LG,HM,LG,HH,LG,HA,
//    LG,HM,LG,HH,LG,HA,
//    LG,HM,LG,HH,LG,HA,
//    LG,HM,LG,HH,LG,HA
//    ];

    


//tl=[LG,HM,LG,HH1,US,
//    LG,HM,LG,HH,US,
//    
//    ];
    
    

//tl=[LG,HM,LG,HH,US,US,SA,DS,DS,DS,
//tl=[
//LG,HM,LG,HH,LG,HM,LG,HH,LG,HM,
//LG,SG,LA,SA,LG,SG,LA,DS,DS,DS,
//LG,SG,LA,SA,LG,SG,LA,DS,DS,DS,
//LG,SG,LA,SA,LG,SG,LA,DS,DS,DS,
//LG,SG,LA,SA,LG,SG,LA,DS,DS,DS,
// ];
    
    

cloop(tl);
//mr([40,40,40],[60,60,60]) cloop(tl);//
//mr([-40,-40,-40],[-60,-60,-60]) cloop(tl);

//tl=[LA];
//tl=[TH,LA,LG,SA,SG,LA,LG,SA,SG,LA,LG,SA,SG,LA,LG,SA,TM];

//tl=[TH,TH,TH,TH,TH,TH,TH,TH];cloop(tl);
//tl=[TM,TM,TM,TM,TM,TM,TM,TM];
//cloop(tl);
gs=30;
ps=[gs,gs,gs];
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
       
