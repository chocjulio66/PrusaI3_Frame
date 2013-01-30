//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>

 


module top_center()
{
//asd	
  //translate([-120, -325, 0])
//rotate(180, [1, 0, 0])
	difference() {
		intersection() {
		
		translate([120, 330, 0])
			cube([130, 130, 20], center = false);

 		difference() {
			linear_extrude(height = 20) import("new3.dxf");
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
	
	
	translate([132, 335, -2])
	cube([105, 30, 20], center = false);
	
	
		translate([120, 341, 10])
		rotate(90, [0, 1, 0])
		cylinder(h = 250, r=4);
	
	translate([135, 345, 25])
	write("Prusa I3",t=12.5,h=20,center=true);translate([20,30,0]);
	
	}
}

 
//top_center();
 

