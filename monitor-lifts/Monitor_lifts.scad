/**
* Design:
*    Monitor lifts
*    
* Use:
*    Set monitor ontop to raise thei eye level
**/

/**
* Units in mm
* Edit these values to create the perfect lift for
* any monitor!
**/
width = 110 + 2;
length = 150;
height = 40;
edges = false;
wall=10;

difference(){
    cube([width,length,height],center=false);
    translate([wall, wall, -wall]){
        cube([width,length-2*wall,height],center=false);
    }
}

if (edges){
    difference(){
        translate([0,0,height-1]){
            cube([width,length,6],center=false);
        }
        translate([2,2,height+1]){
            cube([width-4,length,5],center=false);
        }
    }
}
