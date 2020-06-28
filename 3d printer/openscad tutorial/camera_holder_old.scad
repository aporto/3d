
//-------------------------------------------------------------
// Edit these two variables, according to your phone
//-------------------------------------------------------------
phone_width = 70;
phone_depth = 9.5;

//-------------------------------------------------------------

suppport_height = 20;        

// The support base is a simple longe rectangle
translate([0,0,0])
cube ([3, phone_width, suppport_height]);

// upper winglet, to hold the phone
translate([phone_depth + 3, phone_width-5, 0])
cube ([3, 8, suppport_height]);

// lower winglet, to hold the phone
translate([phone_depth + 3, 0, 0])
cube ([3, 8, suppport_height]);

// the piece connecting the support base to the winglet
translate([0, phone_width, 0])
cube ([phone_depth + 3, 3, suppport_height]);

nut_holder(10, suppport_height);

module nut_holder(box_height, box_side)
{
    //draw the nut holder:
    // This is a box rotated 90deg around X
    translate([0, -box_height, 0]) {        
        nut_width = 11.5; /* measured xy when nut is on a table */
        nut_height = 7; /* measured z when nut is on a table */
            
        center = (box_side - nut_width) / 2;
        
        //translate([center, -3, center])
        //cube ([nut_width, 1, nut_width]);
        
        difference() {        
            // A box for the nut holder
            cube ([box_side, box_height, box_side]);
            
            // A rectangular hole, inside the box,
            // where we can put the nut
            translate([center, 1, center])
            cube ([box_side, nut_height, nut_width]);
            
            // A hole, thorugh that box, so we can insert the screw
            rotate([90, 0, 0])
            translate([box_side / 2, box_side / 2, -2])        
            cylinder(r1=4, r2=4, h=3, $fn=20);
        }
    }
}