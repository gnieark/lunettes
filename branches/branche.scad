module fixation(){
   linear_extrude (height=1.01, $fn = 200)
    import (file="profil.dxf", layer="accroche-exterieur", $fn=500);
    translate([0,0,1])
     linear_extrude (height=4, $fn = 200)
    import (file="profil.dxf", layer="accroche", $fn=500);
    translate([0,0,4.999])
    linear_extrude (height=1.01, $fn = 200)
    import (file="profil.dxf", layer="accroche-exterieur", $fn=500);
   
}    
        translate ([0,0,5])
        rotate([270,270,0])fixation(); 


        translate ([4.1,0,0])
        linear_extrude (height=2, $fn = 200)
        import (file="profil.dxf", layer="0", $fn=500);


        hull(){
             translate ([4,0,0])
             cube ([0.1,6,9]);
            
              translate ([90,0,0])
             cube ([0.1,2,1]);
            
            
            
        }