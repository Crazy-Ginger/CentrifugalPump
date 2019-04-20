$fa = 5;
$fs = 0.01;

module basewall(height=20, radius=42)
{
    elipse = 1.2* radius;
    color("grey")linear_extrude(height)union()
    {
        color("grey")circle(radius);
        translate([0,elipse-radius])
        {  
            difference()
            {
            //resize([86, 100])
                color("green")resize([radius*2, elipse*2])circle(r=radius+1);
                color("red")translate([0,-((elipse+2))])square([radius+2, 2*(elipse+2)]);
            }
        }
    }
}
module base (height = 20, radius = 42, thickness = 1)
{
    difference()
    {
        basewall(height, radius);
        translate([0, 0, thickness])color("blue")basewall(height, radius-thickness);
    }
}

base(20, 42, 1);