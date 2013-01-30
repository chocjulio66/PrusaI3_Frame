use <write.scad>

module middle_left()
{
difference() {
	 
		intersection() {
		
			translate([0, 120, 0])
				cube([120, 130, 20], center = false);

 			difference() {
			 	linear_extrude(height = 20) import("new3.dxf");
				translate([0, 0, -5])
				linear_extrude(height = 30) import("frameholes.dxf");
			}
 
		}

		
	//create tabs
	translate([0, 240, 0])
	cube([30, 10, 5], center = false);
	
	translate([0, 120, 0])
	cube([30, 10, 5], center = false);
	//put holes in tabs
	translate([8, 245, 0])
	cylinder(h = 20, r=2);

	translate([23, 245, 0])
	cylinder(h = 20, r=2);

	translate([8, 125, 0])
	cylinder(h = 20, r=2);

	translate([23, 125, 0])
	cylinder(h = 20, r=2);

	translate([5, 135, -2])
	cube([45, 100, 20], center = false);

	
	//hollow out piece
	translate([40, 265, 10])
	rotate(90, [1, 0, 0])
	cylinder(h = 250, r=4);

}
}


//Build Frame one piece at a time!

//middle_left();

