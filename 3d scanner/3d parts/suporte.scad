translate([0,0,20])
rotate([180,0,0])
{
    difference() {
        
       union() {
            difference() {
                
                // presilha 
                union() {
                    // aletas da presilha
                    translate([2,-30,0])
                    cube ([16, 55, 20]);
                    
                    // reforco cilindrico ao redor da presilha
                    translate([10,30,00])
                    cylinder(r1=40, r2=40, h=20, $fn=20);
                }

                // espaco entre as abas da presilha
                translate([7.5,-35, -50])
                cube ([5, 40, 100]);
                
                // burao parafuso
                translate([-10, -20, 10])
                rotate([0, 90, 0])
                cylinder(r1=3, r2=3, h=50, $fn=20);
            }

            difference() {
                translate([-30, 20, -100])
                cube ([80, 80, 120]);

                translate([-50,-50,-130])
                rotate([-45, 0, 0])
                cube ([120, 200, 220]);
                
                translate([-50, 10, -140])
                cube ([120, 100, 140]);
                
                
            }

        }
        
        //tubo
        translate([-0.5,-0.5,-100])
        cube ([21, 21, 200]);
        
        // vao na parte de baixo do suporte
        translate([-55, 30, -110])
        cube ([120, 120, 125]);
    }

    // suporte inferior
    translate([10,220.5,16])
    rotate([180,0,0])
    difference() {
        translate([-2.5,100,0])
        cube ([5, 100, 100]);

        translate([-10,95,-50])
        rotate([45,0,0])    
        cube ([30, 300, 120]);
        
        translate([-50,0,26])
        cube ([300, 300, 50]);
    }

}    








