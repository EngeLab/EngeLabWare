// Trough holder for EpMotion liquid handler. Substitutes the metal holder, can // be used with cooling pads/ice.
//
// MIT License
/.
// Copyright (c) 2018 Martin Enge
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

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

