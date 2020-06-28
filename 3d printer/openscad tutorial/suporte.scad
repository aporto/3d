

difference() {
    
   union() {
        difference() {
            
            // presilha 
            union() {
                // aletas da presilha
                translate([-3,-30,-20])
                cube ([26, 55, 40]);
                
                // reforco cilindrico ao redor da presilha
                translate([10,40,-20])
                cylinder(r1=50, r2=50, h=40, $fn=20);
            }

            // espaco entre as abas da presilha
            translate([5,-35, -50])
            cube ([10, 40, 100]);
            
            // burao parafuso
            translate([-10, -20, -0])
            rotate([0, 90, 0])
            cylinder(r1=4, r2=4, h=50, $fn=20);
        }

        difference() {
            translate([-40, 20, -100])
            cube ([100, 100, 120]);

            translate([-50,-30,-130])
            rotate([-45, 0, 0])
            cube ([120, 200, 220]);
            
            translate([-50, 10, -170])
            cube ([120, 100, 120]);
            
            
        }

    }
    
    //tubo
    translate([0,0,-100])
    cube ([20, 20, 200]);
    
    // vao na parte de baixo do suporte
    translate([-25, 30, -120])
    cube ([70, 100, 120]);
}









