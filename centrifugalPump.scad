$fa = 5;
$fs = 0.01;

module basewall(height=20, radius=42)
{
    
    color("grey")linear_extrude(height)union()
    {
        color("grey")circle(radius);
        elipse = 1.2*radius;
        translate([0,elipse-radius])
        {  
            difference()
            {
                //elipse type:
                color("green")resize([radius*2, elipse*2])circle(r=radius+1);
                color("red")translate([0,-((elipse+2))])square([radius+2, 2*(elipse+2)]);
                
                //spiral type:
//                spiral = 
//                [
//                    for (i=[180:360])[
//                            (0.3 + 0.16*i)*sin(i)*1.1,
//                            (0.3 + 0.14*i)*cos(i)*1.2
//                        ]
//                ];
//                color("green")polygon(concat(spiral));;
            }
        }
    }
}
//

module base (height = 20, radius = 42, thickness = 1)
{
    difference()
    {
        basewall(height, radius);
        translate([0, 0, thickness])color("blue")basewall(height, radius-thickness);
    }
}
//
radius=42;    height=12;    thickness=1;

translate([0, 0, thickness + 2])color("orange")linear_extrude(2)circle(radius - 2);
base(height, radius, thickness);
