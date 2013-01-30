//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>

 
module lower_center()
{
//asd	

//translate([-120, 0, 5])

//this flips model over for printing
//rotate(180, [1, 0, 0]) 
	difference() {
		intersection() {
		
		translate([120, 0, 0])
			cube([130, 130, 20], center = false);

 		difference() {
			linear_extrude(height = 20) import("new3.dxf");
			translate([0, 0, -5])
			linear_extrude(height = 30) import("frameholes.dxf");
			translate([120, 5, 0])
				cube([10, 30, 5], center = false);
			translate([240, 5, 0])
				cube([10, 30, 5], center = false);
		}
 
	}

	translate([245, 11, 0])
	cylinder(h = 20, r=2);

	translate([245, 26, 0])
	cylinder(h = 20, r=2);

	translate([125, 11, 0])
	cylinder(h = 20, r=2);

	translate([125, 26, 0])
	cylinder(h = 20, r=2);
	
	
	translate([130, 11, 0])
	cube([25, 25, 20], center = false);

	translate([215, 11, 0])
	cube([25, 25, 20], center = false);
	
	
	
	}
}



//Build Frame one piece at a time!

//lower_center();


