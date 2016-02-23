//todo: still buggy slices_keep_showing=2 etc, takes to much time to restart

randomizing=false;
slices_keep_showing=0;
function _slice(i,r)     =  1/(i+r+slices_keep_showing) ;
function _start(i,r)     =  i*_slice(i,r);
function _end(i,r)       = (i+1)*_slice(i,r);
function _future(t,i,r)  =  t <= _start(i,r);
function _current(t,i,r) =  !_past(t,i,r) && !_future(t,i,r);
function _past(t,i,r)    =  t > _end(i,r);

function _ts(t,i,r) = ["t",t,
                      "i",i,
                      "r",r,
                      "_slice(i,r)",_slice(i,r),
                      "_start(i,r)",_start(i,r),
                      "_end(i,r)",_end(i,r),
                      "_past(t,i,r)",_past(t,i,r),
                      "_current(t,i,r)",_current(t,i,r),
                      "_future(t,i,r)",_future(t,i,r),
                      ];

function _tcurr(t,i,r)  = (t - _start(i,r))*(i+r);
function _cof(t,i,r)    = (_future(t,i,r))?
                                0:_tcurr(t,i,r);

//debug()
//function ts(t,i,r)      = (_past(t,i,r))?
//                                [1,_ts(t,i,t)]:
//                                [_cof(t,i,r),_ts(t,i,t)];

//not random
function _tsnr(t,i,r)      = (_past(t,i,r))?                             1:
                                _cof(t,i,r);

//random
function ts(t,i,r)      = (randomizing)?                             1:
                                _tsnr(t,i,r);


//testts();
echo("testts() to see correct working timeslice function, ts(t,i,r)",
     "t=time,i=index,r=size of rest, i+r=total ");
echo("$t=",$t);

module testts(){
    amount=10;
    for( i=[0:1:amount-1]){
        echo("i=",i);
        echo(ts(0.42123456,i,amount));
        } 

    }
