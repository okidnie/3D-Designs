/*
Design:
    Nintendo Switch wall mount

Use:
    Wall mount for Nintendo Switch
*/

// Thickness
th = 5;
// Width
w = 177.8 + 2*th;

// Back plate
difference() {
    cube([w, th, 101.6+th], center=false);
    // Screw hole
    translate([12.7,-1,88.9+th]) {
        rotate([90,0,180]) {
            cylinder(h=th+2, d1=3, d2=10 bbv, center=false);
        }
    }
    translate([w-12.7,-1,88.9+th]) {
        rotate([90,0,180]) {
            cylinder(h=th+2, d1=3, d2=9, center=false);
        }
    }
}

// Bottom plate
difference() {
    cube([w, 16+th, th], center=false);
    translate([w/2-2.5*th,th,-1]) {
        cube([th*5,16,th+2], center=false);
    }
}

// Front plate
translate([0, 16+th, 0]) {
    cube([w, th, 76.2+th], center=false);
}

// Side plates
cube([th, 2*th+16, 50.8], center=false);
translate([w-th,0,0]) {
    cube([th, 2*th+16, 50.8], center=false);
}

