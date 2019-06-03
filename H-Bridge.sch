v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 45100 48400 1 90 0 dc_motor-1.sym
{
T 44100 48800 5 10 0 0 90 0 1
device=DC_MOTOR
T 44900 49000 5 10 1 1 180 0 1
refdes=Motor
}
C 43000 48900 1 0 0 mosfet-with-diode-1.sym
{
T 43900 49400 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 43900 49400 5 10 1 1 0 0 1
refdes=Q?
}
C 43000 47200 1 0 0 mosfet-with-diode-1.sym
{
T 43900 47700 5 10 0 0 0 0 1
device=NPN_TRANSISTOR
T 43900 47700 5 10 1 1 0 0 1
refdes=Q?
}
N 43600 48900 43600 48200 4
C 46500 48900 1 0 1 mosfet-with-diode-1.sym
{
T 45600 49400 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 45600 49400 5 10 1 1 0 6 1
refdes=Q?
}
C 46500 47200 1 0 1 mosfet-with-diode-1.sym
{
T 45600 47700 5 10 0 0 0 6 1
device=NPN_TRANSISTOR
T 45600 47700 5 10 1 1 0 6 1
refdes=Q?
}
N 45900 48900 45900 48200 4
N 44100 48600 43600 48600 4
N 45100 48600 45900 48600 4
C 41600 48600 1 0 0 resistor-2.sym
{
T 42000 48950 5 10 0 0 0 0 1
device=RESISTOR
T 41900 48900 5 10 1 1 0 0 1
refdes=R1
}
C 41400 47600 1 0 0 resistor-2.sym
{
T 41800 47950 5 10 0 0 0 0 1
device=RESISTOR
T 41700 47900 5 10 1 1 0 0 1
refdes=R2
}
N 43000 49400 42500 49400 4
N 42500 46800 42500 49400 4
N 42500 46800 46500 46800 4
N 46500 46800 46500 47700 4
N 42300 47700 43000 47700 4
N 42300 47700 42300 46600 4
N 42300 46600 46700 46600 4
N 46700 46600 46700 49400 4
N 46700 49400 46500 49400 4
C 40500 48600 1 0 0 input-1.sym
{
T 40500 48900 5 10 0 0 0 0 1
device=INPUT
}
C 40500 47600 1 0 0 input-1.sym
{
T 40500 47900 5 10 0 0 0 0 1
device=INPUT
}
N 41300 48700 41600 48700 4
N 41300 47700 41400 47700 4
N 43600 49900 45900 49900 4
N 44700 49900 44700 50200 4
N 43600 47200 45900 47200 4
C 47700 48800 1 90 0 battery-2.sym
{
T 47000 49100 5 10 0 0 270 8 1
device=BATTERY
T 48000 49300 5 10 1 1 0 8 1
refdes=6V
T 46400 49100 5 10 0 0 270 8 1
symversion=0.1
}
N 44700 50200 47500 50200 4
N 47500 50200 47500 49700 4
N 44800 47200 44800 46200 4
N 44800 46200 47500 46200 4
N 47500 46200 47500 48800 4
