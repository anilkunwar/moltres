// Cammi geometry
r1 = 2.08; // cm
r2 = 5.73;
H = 396; // cammi 396
lc = .5;

Point(1) = {0,0,0,lc};
Point(2) = {r1,0,0,lc};
Point(3) = {r2,0,0,lc};
Point(4) = {0,H,0,lc};
Point(5) = {r1,H,0,lc};
Point(6) = {r2,H,0,lc};
Line(1) = {4, 5};
Line(2) = {5, 6};
Line(3) = {6, 3};
Line(4) = {3, 2};
Line(5) = {2, 1};
Line(6) = {1, 4};
Line(7) = {5, 2};
Line Loop(8) = {1, 7, 5, 6};
Plane Surface(9) = {8};
Line Loop(10) = {2, 3, 4, -7};
Plane Surface(11) = {10};
Physical Surface("fuel") = {9};
Physical Surface("moder") = {11};
Physical Line("outer_wall") = {3};
Physical Line("all_top") = {1, 2};
Physical Line("all_bottom") = {5, 4};
Physical Line("fuel_bottom") = {5};
Physical Line("fuel_top") = {1};
Physical Line("graphite_bottom") = {4};
Physical Line("graphite_top") = {2};
