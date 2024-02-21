/*
Design:
    Wine glass holder

Use:
    Wall mount

Question: what is the best way to mount to the wall?
*/

w = 100;
h = 70;
th = 5;

// Bottom
difference(){
    cube([w,w,th], center=false);
    translate([w/2, w/2, -1]){
        cylinder(th+2, d2=60, d1=53, center=false);
    }
    translate([0, 0, -1]){
        cylinder(th+2, d=15);
    }
    translate([w, 0, -1]){
        cylinder(th+2, d=15);
    }
    translate([(w/2)-15, 70, -2]){
        cube([30, 40, th+3], center=false);
    }
}

// Back
cube([w,th,h], center=false);

// Side one
difference(){
    translate([w-th,0,0]){
        cube([th,w,h]);
    }
    translate([w-6,12,25]){
        cube([th+2,w+1,h], center=false);
    }
}

// Side two
difference(){
    cube([th,w,h], center=false);
    translate([-1,12,25]){
        cube([th+2,w+1,h], center=false);
    }
}



