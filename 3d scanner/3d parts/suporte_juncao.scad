tubeWidth = 20.5;
border = 2;

difference() {    
    cube([200, tubeWidth + border*2, tubeWidth + border*2]);
    
    translate([100 + border/2, border, border])
    cube([100, tubeWidth, tubeWidth]);
    
    translate([-border/2, border, border])
    cube([100, tubeWidth, tubeWidth]);
}