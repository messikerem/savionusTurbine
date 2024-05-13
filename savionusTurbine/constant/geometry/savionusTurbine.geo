//+
mesh_size1 = 0.1;
mesh_size2 = 0.01;
mesh_size3 = 0.005;
//+

Point(5) = {2.18968, 1.52080, 0, mesh_size3};
Point(6) = {2.3875, 1.5, 0, mesh_size3};
Point(7) = {2.2875, 1.5, 0, mesh_size3};
Point(8) = {2.21414, 1.5156, 0, mesh_size3};
Point(9) = {2.3625, 1.5, 0, mesh_size3};
Point(10) = {2.2875, 1.6, 0, mesh_size3};
Point(11) = {2.2875, 1.6-0.025, 0, mesh_size3};
Point(12) = {2.0125, 1.5, 0, mesh_size3};
Point(13) = {2.21009, 1.47818, 0, mesh_size3};
Point(14) = {2.1125, 1.5, 0, mesh_size3};
Point(15) = {2.1125, 1.4, 0, mesh_size3};
Point(16) = {2.0375, 1.5, 0, mesh_size3};
Point(17) = {2.185693, 1.483639, 0, mesh_size3};
Point(18) = {2.1125, 1.425, 0, mesh_size3};
Point(19) = {2.2, 1.5, -0, mesh_size3};

Circle(1) = {5, 7, 10};
//+
Circle(2) = {10, 7, 6};
//+
Circle(3) = {8, 7, 11};
//+
Circle(4) = {11, 7, 9};
//+
Line(5) = {5, 8};
//+
Line(6) = {6, 9};
//+
Circle(7) = {12, 14, 15};
//+
Circle(8) = {15, 14, 13};
//+
Circle(9) = {16, 14, 18};
//+
Circle(10) = {18, 14, 17};
//+
Line(11) = {12, 16};
//+
Line(12) = {17, 13};
//+

//+

//+
Curve Loop(1) = {11, 9, 10, 12, -8, -7};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 3, 4, -6, -2, -1};
//+
Plane Surface(2) = {2};
//+
Extrude {0, 0, -0.5} {
  Surface{1}; Surface{2}; Layers{5}; Recombine;
}
//+
Physical Surface("turbine") = {1, 44, 43, 27, 39, 31, 23, 35, 2, 55, 76, 75, 59, 63, 71, 67};
//+

