/*

This script generates a powercord support for your workbench

More info: 
www.alexporto.com

*/


// Call support, passing the number of cords you want to hold with this suppport

support(4);


// Here is the rest of the code. You probably won't need to change anything below this line

module support(numHoles = 5)
{
    difference() {
        base (numHoles);
        for (a =[0:numHoles]) {
            hole(a);
        }
        
        // screw holes
        rotate([90,0,0])        
        translate([20, 16, -50])    
        cylinder(h=100, r1=2.3, r2=2.3);        
        rotate([90,0,0])        
        translate([numHoles * 40 - 20, 16, -50])    
        cylinder(h=100, r1=2.3, r2=2.3);               
    }    
    
    // winglets
    for (a =[1:numHoles-1]) {            
        winglet(a, numHoles);
    }
}

module winglet(pos = 0, numHoles = 5)
{
    difference () {
        rotate([0,90,0])        
        translate([0, 40, pos * 40 -1 ])    
        cylinder(h=2, r1=40, r2=40);

        translate([pos * 40 - 5, 0,-40])    
        cube ([10,50,40]);
        translate([pos * 40 - 5, 45,-40])    
        cube ([10,50,100]);     
        
        translate([0,0,25])
        cube([40 * numHoles, 100, 35]);       
        
    }
}

module base(numHoles = 5) 
{    
    cube([40 * numHoles, 40, 5]);
    translate([0,40,0])
    cube([40 * numHoles, 5, 25]);
}

module hole(pos = 0)  
{
    translate([(pos) * 40 + 15,-2,-2])
    cube([8,25,10]); 
    translate([(pos) * 40 + 10,10,-2])    
    round_cube(l=18, w=18, h=20);
}

module round_cube(l=40,w=30,h=20,r=5,$fn=30){
	hull(){ 
		translate ([r, r, 0]) cylinder (h = h, r=r);
		translate ([r, w-r, 0]) cylinder (h = h, r=r);
		translate ([l-r,w-r, 0]) cylinder (h = h, r=r);
		translate ([l-r, r, 0]) cylinder (h = h, r=r);
	}
}