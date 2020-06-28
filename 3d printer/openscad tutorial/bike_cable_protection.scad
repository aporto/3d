
linear_extrude(height = 200)
scale([32/45, 1,1])
circle(d=45);

color([1,0,0]);
#cylinder(r1=10,r2=10, h=20);


difference () {
    translate([0,15,0])
    linear_extrude(height = 200)
    scale([32/45, 1,1])
    circle(d=45);
    
    translate([0,15,-20])
    linear_extrude(height = 250)
    scale([32/45, 1,1])
    circle(d=35);
}


