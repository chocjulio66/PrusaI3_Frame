//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>

 


module top_center()
{
//asd	
  translate([0, 5, 25])
//rotate(180, [1, 0, 0])
	difference() {
		intersection() {
		
		translate([120, 330, 0])
			cube([130, 130, 10], center = false);

 		difference() {
			linear_extrude(height = 10) import("new3.dxf");
			translate([0, 0, -5])
			linear_extrude(height = 30) import("frameholes.dxf");
			translate([120, 340, 0])
				cube([10, 30, 5], center = false);
			translate([240, 340, 0])
				cube([10, 30, 5], center = false);
		}
 
	}

	translate([245, 350, 0])
	cylinder(h = 20, r=2);

	translate([245, 365, 0])
	cylinder(h = 20, r=2);
    
    translate([125, 350, 0])
	cylinder(h = 20, r=2);

	translate([125, 365, 0])
	cylinder(h = 20, r=2);
	}
}

 
top_center();
 

