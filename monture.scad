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
    
        translate([0,0,-0.00001])
        linear_extrude (height=7, $fn = 200)
        import (file="profil-exploded.dxf", layer="coupure", $fn=500);
}
