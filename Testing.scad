module arc(length, width)
{
    //r = (l^2 + 4*b^2)/8*b 
    radius = (pow(length,2) + 4*pow((length/11),2))/(8*(length/11));
    echo(radius);
    translate([length/2,0,0])
    difference() 
    {
        difference() 
        {
            translate([0,-radius+(length/11),0])
            difference() 
            {
                circle(r=radius+width,$fn=20);
                circle(r=(radius),$fn=20);
            }
            
            translate([-(radius+width),-(radius+width)*2,0,])
            square([(radius+width)*2,(radius+width)*2]);
        }
        union() 
        {
            translate([-length,-(length/11)]) 
            square([length/2,(length/11)*2]);
            translate([length/2,-(length/11)])     
            square([length/2,(length/11)*2]);
        }
    }
}

linear_extrude(20, centre=false, convexity=10, twist=10)
for (i=[0:1])
    rotate((360*i))
        translate([0,-1])
            arc(50, 2);