(**** end of start.gcode ****)
(**** This file is for a Thing-O-Matic outfitted for experimental dualstrusion ONLY! ****)
G21 (set units to mm)
G90 (set positioning to absolute)
G10 P1 X16.55 Y0 Z-0.3 (Designate T0 Offset)
G10 P2 X-16.5 Y0 Z-0.3 (Designate T1 Offset)
G55 (Recall offset cooridinate system)
M104 S225 T0 (set extruder temperature)
M109 S110 T0 (set HBP temperature)
(**** begin homing ****)
G162 Z F1100 (home Z axis maximum)
G92 Z-5 (set Z to -5)
G1 Z0.0 (move Z to "0")
G162 Z F100 (home Z axis maximum)
G161 X Y F2500 (home XY axes minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)
(**** end homing ****)
M6 T0
M6 T1
(**** end of start.gcode ****)