//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>









module top_right()
{
translate([0, -230, 0])
	difference() {
		union(){
			intersection() {
			
				translate([250, 250, 0])
					cube([120, 120, 10], center = false);

				difference() {
					linear_extrude(height = 10) import("new3.dxf");
					translate([0, 0, -5])
					linear_extrude(height = 30) import("frameholes.dxf");
				}
	 
			}

			translate([340, 240, 0])
					cube([30, 10, 5], center = false);
			translate([240, 340, 0])
					cube([10, 30, 5], center = false);


		}

		translate([348, 245, 0])
		cylinder(h = 20, r=2);

		translate([363, 245, 0])
		cylinder(h = 20, r=2);

			translate([245, 350, 0])
		cylinder(h = 20, r=2);

		translate([245, 365, 0])
		cylinder(h = 20, r=2);
		
		translate([245, 365, 25])
		write("Prusa I3",t=10.5,h=10,center=true);translate([20,30,0]);

	}
}



top_right();

