$fn=96;
shellThick=3;

translate([0,0,9.5]) difference() {
	union() {
		minkowski() {
			cube([80, 122, 19], center=true);
			cylinder(r=3, h=2);
		}
		translate([0,0,88/2+8.5]) {
			minkowski() {
				cube([97, 125, 82], center=true);
				cylinder(r=3, h=2);
			}
		}
	}
	minkowski() {
		translate([0,0,shellThick]) cube([74-shellThick*2, 125-shellThick*2, 20], center=true);
		cylinder(r=3, h=2);
	}
	translate([0,0,88/2+10.5+shellThick]) minkowski() {
		cube([97-shellThick*2, 125-shellThick*2, 86], center=true);
		cylinder(r=3, h=2);
	}
	for(m = [-54:18:54]) {
		translate([0,m,95-9.5]) holderspace();
	}

}

//rotate([90, 0, 90]) text("1", size=15);
*	for(m = [-54:18:54]) {
		translate([0,m,95]) holderspace();
	}

module holderspace() {
	translate([0,0,2.5]) union() {
		cube([200, 2.5,5], center=true);
		translate([0,0,2.5]) hull() {
			cube([200, 2.5,0.1], center=true);
			translate([0,0,6]) cube([200, 12,2], center=true);
		}
	}
}



*translate([0,80,52.5]) cube([86,125,105], center=true);
*translate([0,0,156.5]) cube([97,125,105], center=true);
*translate([-80,0,10.5]) cube([97,128,21], center=true);
*translate([0,0,0]) cube([97,128,95]);