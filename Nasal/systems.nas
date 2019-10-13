
vol_cabin=props.globals.getNode("/sim/sound/f9f/vol_cabin",1);
vol_exterior=props.globals.getNode("/sim/sound/f9f/vol_exterior",1);

setlistener("/sim/signals/fdm-initialized", func{
    vol_cabin.setValue(0.5);
    vol_exterior.setValue(0.2);
});


setlistener("/sim/current-view/view-number", func(vw){
    ViewNum = vw.getValue();
    if(ViewNum == 0){
        vol_cabin.setValue(0.5);
        vol_exterior.setValue(0.5);
        }else{
        vol_cabin.setValue(0.2);
        vol_exterior.setValue(1.0);
        }
    },1,0);

