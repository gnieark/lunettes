module fixation(){
   linear_extrude (height=1.01, $fn = 200)
    import (file="profil.dxf", layer="accroche-exterieur", $fn=500);
    translate([0,0,1])
     linear_extrude (height=3.5, $fn = 200)
    import (file="profil.dxf", layer="accroche", $fn=500);
    translate([0,0,4.499])
    linear_extrude (height=1.01, $fn = 200)
    import (file="profil.dxf", layer="accroche-exterieur", $fn=500);
   
}    
module branche_droite(){
        translate ([0,0,4])
        rotate([270,270,0])fixation(); 


        translate ([2.9999,0,0])
        linear_extrude (height=1, $fn = 200)
        import (file="profil.dxf", layer="0", $fn=500);

        hull(){
             translate ([4.9999,0,0])
             cube ([0.1,5.5,7]);
            
              translate ([90,0,0])
             cube ([0.1,2,1]);
        }
 }
 
branche_droite();