//todo move functions here and test well!
//cloop_recursive.scad:50:
function flip(angle) = (angle==180 ? -1: 1);
//cloop_recursive.scad:53:
function get_alpha(time_sl) = (time_sl==1 ? default_alpha_past: 1);
//names.scad:97:
function find_id_by_name(name)=[for (i=[0:1:len(t2_all_names)-1]) if(t2_all_names[i]==name) i][0]; 
//random.scad:1:
function random()= rands(0,1,1)[0];
//random_tribbles.scad:12:
function random_tri_number() =ceil(random()*(len(t2_all_names)-1));
//random_tribbles.scad:19:
function rlist()= [for (i=[1:1:rsize]) t2_by_name[random_tri_number()] ];
//random_tribbles.scad:25:
function rnames_uniq(rl)= [for (i=[0:1:len(rl)-1]) if(rl[i][2]!=rl[i+1][2]) rl[i]];
//random_tribbles.scad:34:
function rnames_uniq_face(rl)= [for (i=[0:1:len(rl)-1]) if(rl[i][2][0]!=rl[i+1][2][0]) rl[i]];
//random_tribbles.scad:48:
function rnames(rl)= [for (i=[0:1:len(rl)-1]) rl[i][2] ];
//time_slice.scad:5:
function _slice(i,r)     =  1/(i+r+slices_keep_showing) ;
//time_slice.scad:6:
function _start(i,r)     =  i*_slice(i,r);
//time_slice.scad:7:
function _end(i,r)       = (i+1)*_slice(i,r);
//time_slice.scad:8:
function _future(t,i,r)  =  t <= _start(i,r);
//time_slice.scad:9:
function _current(t,i,r) =  !_past(t,i,r) && !_future(t,i,r);
//time_slice.scad:10:
function _past(t,i,r)    =  t > _end(i,r);
//time_slice.scad:12:
function _ts(t,i,r) = ["t",t,
//time_slice.scad:23:
function _tcurr(t,i,r)  = (t - _start(i,r))*(i+r);
//time_slice.scad:24:
function _cof(t,i,r)    = (_future(t,i,r))?
//time_slice.scad:28://function ts(t,i,r)      = (_past(t,i,r))?
//time_slice.scad:33:
function _tsnr(t,i,r)      = (_past(t,i,r))?                             1:
//time_slice.scad:37:
function ts(t,i,r)      = (randomizing)?                             1:
//time_slice.scad:42:
echo("testts() to see correct working timeslice function, ts(t,i,r)",
