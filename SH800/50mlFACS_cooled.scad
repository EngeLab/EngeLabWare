$fn=100;
holder_width=1.5;

*holder_base();
holder_lid();

module holder_lid() {
difference() {
    translate([0,0,56.7]) cube([85, 106, 3], center=true);
    holder_base();
    translate([0,30,3]) rotate([6, 0,0])  translate([0,0,-20]) ep50();
    translate([0,-30,3]) rotate([-6, 0,0])  translate([0,0,-20]) ep50();
    cube([1,1000, 1000], center=true);
}
}

module holder_base() {
difference() {
      translate([0,0,27.5]) cube([85, 106, 55], center=true);
      translate([0,0,34]) cube([79, 100, 55], center=true);
    translate([0,-25,-0.1]) cylinder(r=2, h=5);
    hull() {
        translate([0,24,-0.1]) cylinder(r=2, h=5);
        translate([0,17,-0.1]) cylinder(r=2, h=5);
    }
    hull() {
        translate([-14.5,-4,-0.1]) cylinder(r=2, h=5);
        translate([-14.5,4,-0.1]) cylinder(r=2, h=5);
    }
}

difference() {
    union() {
        translate([0,30,3]) rotate([6, 0,0])  translate([0,0,30]) cylinder(r=14.8+holder_width,  h=35);
        translate([0,-30,3]) rotate([-6, 0,0])  translate([0,0,30]) cylinder(r=14.8+holder_width,  h=35);
        translate([0,43,30]) cube([8, 20, 50], center=true);
        translate([0,30,3]) rotate([6, 0,0]) intersection() { 
            translate([0,0,2]) cylinder(r=14.8+holder_width, h=35);
            hull() {
                translate([0,-50,30]) cube([25, 100, 1], center=true);
                translate([0,-50,0]) cube([4, 100, 1], center=true);
            }
        }
        translate([0,-43,30]) cube([8, 20, 50], center=true);
        translate([0,-30,3]) rotate([-6, 0,0]) intersection() { 
            translate([0,0,2]) cylinder(r=14.8+holder_width, h=35);
            hull() {
                translate([0,50,30]) cube([25, 100, 1], center=true);
                translate([0,50,0]) cube([4, 100, 1], center=true);
            }
        }
    }
    translate([0,30,3]) rotate([6, 0,0])  translate([0,0,-20]) ep50();
    translate([0,-30,3]) rotate([-6, 0,0])  translate([0,0,-20]) ep50();
}
}


module ep50() {
     translate([0,0,15]) cylinder(r=14.8, h=100);
     cylinder(r1=4, r2=14.8, h=15);
}
        


//translate([0,30,0]) rotate([6, 0,0])  cylinder(r=15, h=115);
//translate([0,-30,0]) rotate([-6, 0,0])  cylinder(r=15, h=115);
