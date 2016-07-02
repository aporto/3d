raio_tubo = 10.5;
comprimento_pe = 500;
angulo_pe = 12;



difference() {
    bloco();
    
    tripes();
    
    translate([-10,-13,485])
    cube([20.5,20.5,200]);
}

module bloco() 
{
    color([1,0,0,0.5])    
    difference() {        
        translate([0,0,435])
        pyramid(side=110, height=150);
        
        translate([-200,-200,485])
        cube([400,400,300]);
    }   
    
    color([1,0,0,0.5])    
    translate([0,-3,535])
    cube([26,26,100], true);
}
    

module tripes() 
{
    translate([-160,-90,0])
    rotate([-9,17,0])
    cylinder(r1=raio_tubo, r2=raio_tubo, h=comprimento_pe, $fn=700);

    translate([0,185,0])
    rotate([19,0,0])
    cylinder(r1=raio_tubo, r2=raio_tubo, h=comprimento_pe, $fn=700);

    translate([160,-90,0])
    rotate([-9,-17,0])
    cylinder(r1=raio_tubo, r2=raio_tubo, h=comprimento_pe, $fn=700);

//translate([-comprimento_pe * cos(angulo_pe),0,0])
//rotate([0,angulo_pe,0])
//cylinder(r1=raio_tubo, r2=raio_tubo, h=600, $fn=700);
    
}
    
module pyramid(side=10, height=-1, square=false, centerHorizontal=true, centerVertical=false)
{
// creates a 3 or 4 sided pyramid.  -1 height= tetrahedron or Johnson's Solid square pyramid
	mHeight= height!=-1 ? height:
		square == true ? (1/sqrt(2))*side:		//square
			sqrt(6)/3*side;						//tetra
	vert= centerVertical!=true ? [0,0,0]:
		square==false ? [0,0,-mHeight/4] :	 //inscribes a tetra inside a sphere, not 1/2 ht
			[0,0,-mHeight/2];	//for squares, center=false inscribes, so true is just 1/2 ht
	horiz= centerHorizontal!= true ? [0,0,0] :
		square == true ? [-side/2, -side/2, 0] : 	//square
			[-side/2,-sqrt(3)*side/6 ,0];			//tetra
	translate(vert+horiz){
		if (square == true){
			polyhedron (	points = [[0,0,0],[0,side,0],[side,side,0],
								[side,0,0],[side/2,side/2,mHeight]], 
						triangles = [[1,0,2], [2,0,3], [0,4,3], 
								[3,4,2], [2,4,1], [1,4,0]]);
		}
		if (square != true){
			polyhedron (	points = [[0,0,0],[side,0,0],[side/2,sqrt(3)*side/2,0],
								[side/2,sqrt(3)*side/6,mHeight]], 
						triangles = [[0,1,2], [1,0,3], [2,1,3],[2,3,0]]);			
		}
    }	
}
