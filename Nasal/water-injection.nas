var WI = func {
    if ( getprop("/gear/gear[0]/wow") or 
         getprop("/gear/gear[1]/wow") or
         getprop("/gear/gear[3]/wow") or
         getprop("/gear/gear[2]/wow") ){
    screen.log.write("Engaging Water Injection for Takeoff!");
    
    setprop("/controls/engines/engine[0]/water-injection", 1);
    #setprop("/sim/multiplay/generic/int[3]", 1);
    settimer ( func { 
        setprop("/controls/engines/engine[0]/water-injection", 0); 
        #setprop("/sim/multiplay/generic/int[3]", 0);
        }, 60);
    }
    else
        screen.log.write("Can't Engage: Not on ground!");
}
    

