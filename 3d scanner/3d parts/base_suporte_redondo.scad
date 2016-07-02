tubeWidth = 21;
border = 3;
height = 100;

difference() {
    center1 = -(tubeWidth + border * 2) / 2;
    center2 = -(tubeWidth) / 2;
    union() {
        cylinder(r1=75, r2=75, h=5, $fn=12);
        translate([center1, center1, 0])
        cube([tubeWidth + border * 2, tubeWidth + border * 2, height]);
    }
        
    translate([center2, center2, border * 2])
    cube([tubeWidth, tubeWidth, 2 * height]);    
}