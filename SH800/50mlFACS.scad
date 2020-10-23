$fn=100;

difference() {
    union() {
        cylinder(r=33, h=5, center=true);
        translate([0,0,17.5]) cube([47, 106, 30], center=true);
    }
    translate([67,0,0.0]) cube([100, 100, 5], center=true);
    translate([-67,0,0.0]) cube([100, 100, 5], center=true);
    translate([0,-25,-2.5]) cylinder(r=2, h=5);
    hull() {
        translate([0,24,-2.5]) cylinder(r=2, h=5);
        translate([0,17,-2.5]) cylinder(r=2, h=5);
    }
    hull() {
        translate([-14.5,-4,-2.5]) cylinder(r=2, h=5);
        translate([-14.5,4,-2.5]) cylinder(r=2, h=5);
    }
    translate([0,30,3]) rotate([6, 0,0])  ep50();
    translate([0,-30,3]) rotate([-6, 0,0])  ep50();
}

module ep50() {
     translate([0,0,15]) cylinder(r=15, h=100);
     cylinder(r1=4, r2=15, h=15);
}
        


//translate([0,30,0]) rotate([6, 0,0])  cylinder(r=15, h=115);
//translate([0,-30,0]) rotate([-6, 0,0])  cylinder(r=15, h=115);
