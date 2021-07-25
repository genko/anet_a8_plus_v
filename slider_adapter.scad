$fn=99;

rotate([0,180,0])
difference () {
 translate ([-6,-8,0])   
  cube ([40,39,7]);
    
 translate ([9+2.5,-1+2+0.5,-1])
mgn12_pattern ();
translate ([0,-1,-1])
anet_carriage_pattern ();   
    
}


module mgn12_pattern () {
    
    //screw holes
    cylinder(h=14,d=3.2);
    translate ([15,0,0])
    cylinder(h=14,d=3.2);
    translate ([0,20,0])
    cylinder(h=14,d=3.2);
    translate ([15,20,0])
    cylinder(h=14,d=3.2);
    
    //screw holes
    translate ([0,0,2])
    cylinder(h=3,d1=3.2,d2=6.4);
    translate ([15,0,2])
    cylinder(h=3,d1=3.2,d2=6.4);
    translate ([0,20,2])
    cylinder(h=3,d1=3.2,d2=6.4);
    translate ([15,20,2])
    cylinder(h=3,d1=3.2,d2=6.4);
    
    //socket caps holes
    translate ([0,0,5])
    cylinder(h=30,d=6.4);
    translate ([15,0,5])
    cylinder(h=30,d=6.4);
    translate ([0,20,5])
    cylinder(h=30,d=6.4);
    translate ([15,20,5])
    cylinder(h=30,d=6.4);   
}

module anet_carriage_pattern () {
    //screw holes
    cylinder(h=30,d=4.2);
    translate ([19,0,0])
    cylinder(h=30,d=4.2);
    translate ([0,25,0])
    cylinder(h=30,d=4.2);
    translate ([19,25,0])
    cylinder(h=30,d=4.2);

    //holes for nuts
    translate ([0,0,-1])
    cylinder(h=7,d=8.6, $fn=6);
    translate ([19,0,-1])
    cylinder(h=7,d=8.6, $fn=6);
    translate ([0,25,-1])
    cylinder(h=7,d=8.6, $fn=6);
    translate ([19,25,-1])
    cylinder(h=7,d=8.6, $fn=6);    
    
}
