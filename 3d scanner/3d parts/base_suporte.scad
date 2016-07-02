tubeWidth = 20.5;

difference() {
    union() {
        cube([100, 25, 25], true);
        cube([25, 100, 25], true);

        translate([0, 0, 12.5])
        cube([35, 35, 50], true);
    }
    
    translate([0, 0, 40])
    cube([tubeWidth, tubeWidth, 100], true);
    
    cube([200, tubeWidth, tubeWidth], true);
    cube([tubeWidth, 200, tubeWidth], true);
}