$fn=99;
difference () {
union () {    
cube ([38,20,5]);
translate ([10+3,10,0])
cube ([12,15,5]);
translate ([-1,-7,0])
rail();

}
//Screw holes to fix to frame
translate ([5,10,-1])
cylinder (h=30,d=4.4);
translate ([5+28,10,-1])
cylinder (h=30,d=4.4);

//Screw hole sunks to fix to frame
translate ([5,10,2])
cylinder (h=3,d1=4.4, d2=8);
translate ([5+28,10,2])
cylinder (h=3,d1=4.4, d2=8);

//Rail Screw Hole M3
translate ([20-1,20-1,-7])
cylinder (h=30,d=3.2);
//Rail Counter Nut
translate ([20-1,20-1,-7])
cylinder (h=10,d=6.5,$fn=6); 
}

module rail() {
//rail end stop
translate ([14,12-0.5,0])
cube ([12,2,10]);
    
//rail guide
translate ([14-3.4,12+2,0])
cube ([3,5,10]);
    
translate ([14-2+14.4,12+2,0])
cube ([3,5,10]);    
}