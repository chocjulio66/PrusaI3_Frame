//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>



module top_left()
{
//translate([0, -230, 0])
	//translate([0, -230, 0])
	difference() {
		union(){
			intersection() {
			
				translate([0, 250, 0])
					cube([120, 120, 20], center = false);

				difference() {
					linear_extrude(height = 20) import("new3.dxf");
					translate([0, 0, -5])
					linear_extrude(height = 30) import("frameholes.dxf");
				}
	 
			}

			translate([0, 240, 0])
					cube([30, 10, 5], center = false);
			translate([120, 340, 0])
					cube([10, 30, 5], center = false);


		}

		translate([125, 350, 0])
		cylinder(h = 20, r=2);

		translate([125, 365, 0])
		cylinder(h = 20, r=2);

		translate([8, 245, 0])
		cylinder(h = 20, r=2);

		translate([23, 245, 0])
		cylinder(h = 20, r=2);
	 
		translate([5, 265, -2])
		cube([45, 100, 20], center = false);
	 
		translate([45, 335, -2])
		cube([65, 30, 20], center = false);

		
		//horizontal dow rod hole
		translate([100, 341, 10])
		rotate(90, [0, 1, 0])
		cylinder(h = 250, r=4);
		
		//vertical dow rod hole
		translate([40, 285, 10])
		rotate(90, [1, 0, 0])
		cylinder(h = 250, r=4);
		
		translate([135, 345, 25])
		write("Prusa I3",t=12.5,h=20,center=true);translate([20,30,0]);

	 
	}
}



//top_left();


