module clip()
{
        rotate ([90,0,0])
        linear_extrude (height=3, $fn = 200)
        import (file="clip.dxf", layer="0", $fn=500);
}

 translate([21.8,38,1.99997]) rotate([0,0,-90]) clip();
 translate([98.2,38,1.99997]) rotate([0,0,-90]) clip();

 translate([19.8,-6.8,1.99997]) rotate([0,0,90]) clip();
 translate([96.2,-6.8,1.99997]) rotate([0,0,90]) clip();

 translate([-5.4,16,1.99997]) rotate([0,0,0]) clip();
 translate([67.7,16,1.99997]) rotate([0,0,0]) clip();

 translate([51.4,14,1.99997]) rotate([0,0,180]) clip();
 translate([123.5,14,1.99997]) rotate([0,0,180]) clip();


difference()
{
    union(){
    
    linear_extrude (height=1, $fn = 200)
        import (file="profil-exploded.dxf", layer="larger", $fn=500);
            
    translate([0,0,0.99999])
        linear_extrude (height=2, $fn = 200)
        import (file="profil-exploded.dxf", layer="0", $fn=500);
       
    translate([0,0,2.99997])
        linear_extrude (height=4, $fn = 200)
        import (file="profil-exploded.dxf", layer="attache", $fn=500);
        
        translate([0,0,2.99997])
        linear_extrude (height=2, $fn = 200)
        import (file="profil-exploded.dxf", layer="nez", $fn=500);
    }
    union(){
        translate([0,0,-0.00001])
        linear_extrude (height=7, $fn = 200)
        import (file="profil-exploded.dxf", layer="coupure", $fn=500);
        
         translate([-10,0,5])
            rotate([270,0,0]) 
            cylinder(h = 50, r1 = 1.5, r2 = 1.5, center = true/false,  $fn=50);
        
        translate([127.8,0,5])
        rotate([270,0,0]) 
        cylinder(h = 50, r1 = 1.5, r2 = 1.5, center = true/false,  $fn=50);
    }
}
