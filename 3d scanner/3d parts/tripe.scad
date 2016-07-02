difference() {
    union() {
        difference() {
            pyramid(side=200);
        
            translate([0,0,5])
            pyramid(side=180);
        }
        
        translate([0,0,20])
        cube([25,25,20], true);
    }
    translate([0,0,203])
    cube([20.5, 20.5, 400], true);
}

module pyramid(side=10, height=-1, square=false, centerHorizontal=true, centerVertical=false){
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
}	}
 
 
 
 /*
 
 polyhedron(
  points=[ [10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0], 
  // the four points at base
           [0,0,10]  ],                                 
           // the apex point 
  faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],              
  // each triangle side
              [1,0,3],[2,1,3] ]
              // two triangles for square base
 );*/