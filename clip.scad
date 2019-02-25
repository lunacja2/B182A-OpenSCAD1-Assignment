
/**
 * Clip
 * cvocek na otevreny pytlicek
 * @param x celkova delka objektu
 * @param y celkova sirka objektu
 * @param z celkova vyska objektu
 * @param tooth strana jednoho zubu
 * @param off offset zprava kde je cylinder
 * @param distance vzdalenost mezi zuby
 * @author Jakub Průša
 */

module clip (x=60,y=20,z=5,tooth=9,off=6,distance=8) {
  
    
  translate([(x*0.5+y*0.5*0.5),0,0]) difference(){
    translate([-(x*0.5+y*0.5*0.5),0,0]) union(){
           cube([x-y*0.5,y,z],center=true);
        translate([0.5*(x-y*0.5),0,0]) cylinder(d=y,h=z,center=true);
      } 
      pocet = (x - off)/distance;
      for(x=[0:floor(pocet)]){
          translate([-(tooth*0.5+off+x*distance),0,0]) rotate([0,0,45]) cube([tooth,tooth,z],center=true);
          
      }
      
  }
}


clip();
