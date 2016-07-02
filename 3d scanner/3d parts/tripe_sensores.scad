raio_tubo = 10.5;
comprimento_pe = 300;
angulo_pe = 12;
cylinder_sides = 24;

difference() {       
    bloco();

    translate([0,0,110])
    tripes();    
    
    translate([-10,-13,270])
    cube([20.5,20.5,110]);
}

module bloco() 
{
    color([1,0,0,0.5])    
    difference() {        
        union() {
            translate([0,0,225])
            cylinder(r1=40, r2=55, h=25, $fn=cylinder_sides);
        
            translate([0,0,250])
            cylinder(r1=55, r2=20, h=25, $fn=cylinder_sides);
        }
    }   
    
    translate([0,0,270])
    cylinder(r1=25, r2=10, h=40, $fn=cylinder_sides);
    
    color([1,0,0,0.5])    
    translate([0,-3,325])
    cube([26,26,100], true);   
    
}
    

module tripes() 
{
    translate([-220,-170,0])
    rotate([-33,55,0])
    cylinder(r1=raio_tubo, r2=raio_tubo, h=comprimento_pe, $fn=cylinder_sides);

    translate([0,270,0])
    rotate([60,0,0])
    cylinder(r1=raio_tubo, r2=raio_tubo, h=comprimento_pe, $fn=cylinder_sides);

    translate([220,-170,0])
    rotate([-33,-55,0])
    cylinder(r1=raio_tubo, r2=raio_tubo, h=comprimento_pe, $fn=cylinder_sides);
   
}
    
