use <write.scad>
module middle_right()
{
difference() {
	
		intersection() {
		
			translate([250, 120, 0])
				cube([120, 130, 20], center = false);

 			difference() {
			 	linear_extrude(height = 20) import("new3.dxf");
				translate([0, 0, -5])
				linear_extrude(height = 30) import("frameholes.dxf");
			}
 
		}


	translate([340, 240, 0])
	cube([30, 10, 5], center = false);
	
	translate([340, 120, 0])
	cube([30, 10, 5], center = false);

	translate([348, 245, 0])
	cylinder(h = 20, r=2);

	translate([363, 245, 0])
	cylinder(h = 20, r=2);

	translate([348, 125, 0])
	cylinder(h = 20, r=2);

	translate([363, 125, 0])
	cylinder(h = 20, r=2);


	translate([320, 135, -2])
	cube([45, 100, 20], center = false);

	
	//hollow out piece
	translate([335, 265, 10])
	rotate(90, [1, 0, 0])
	cylinder(h = 250, r=4);


}
}




 

//Build Frame one piece at a time!

//middle_right();
  

