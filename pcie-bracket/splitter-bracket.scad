// Cable holder for splitter
//
th = 1.6;
h_dia = 4.5;
th_dia = 4.0;
key_w = 3.0;
drop = 25;
tab_w = 15;
tube_len=5+th;

module plate()
{
cube([18, th, 69], center=true);
translate([0, 0, -3.5-69/2])
cube([10, th, 7], center=true);

    translate([0,-tube_len/2-th/2-.2,69/2-1-drop])
    rotate([90, 0,0])
    cylinder(r=h_dia/2+2, h=10, $fn=100, center=true);
    
 translate([0, -tab_w/2+th/2, 69/2])
  cube([30, tab_w, th], center=true);
}

module hole()
{
    translate([0, -th*3,69/2-1])
    cube([key_w, tab_w*2, drop*2], center=true);

    translate([0,0,69/2-1-drop])
    rotate([90, 0,0])
    cylinder(r=h_dia/2, h=30, $fn=100, center=true);
    }
    
    module top_hole()
      {
          translate([0, 0, 0])
          cylinder(h= th*4, r=th_dia/2, $fn=50, center=true);
          translate([22.0, 0, 0])
          cylinder(h= th*4, r=th_dia/2, $fn=50, center=true);
          
      }
    
difference()
{
plate();
hole();
    translate([-11, -7.5, 69/2])
    rotate([0, 0, 0])
    top_hole();
}