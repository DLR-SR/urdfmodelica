within URDFModelica.Examples_Visualization2.Physics_Wheels.Links;
record Right_baseParams
  extends URDFModelica.Records.Link(
name = "right_base",
hasVisual = true,
hasCollision = true,
inertial = URDFModelica.Records.Inertial(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0}, rpy = {0.0, 0.0, 0.0}),
mass = 10.0,
inertia = URDFModelica.Records.Inertia(ixx = 1.0,
ixy = 0.0,
ixz = 0.0,
iyy = 1.0,
iyz = 0.0,
izz = 1.0)),
visual = URDFModelica.Records.Visual(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0}, rpy = {0.0, 0.0, 0.0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.box,
size = {0.4, 0.1, 0.1},
length = 1.0,
radius = 1.0,
filename = "defaultMeshPath",
scale = {1.0, 1.0, 1.0}),
material = URDFModelica.Records.Material(name = "white",
rgba = {1.0, 1.0, 1.0, 1.0},
texture = "defaultTextureFilename")),
collision = URDFModelica.Records.Collision(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0}, rpy = {0.0, 0.0, 0.0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.box,
size = {0.4, 0.1, 0.1},
length = 1.0,
radius = 1.0,
filename = "defaultMeshPath",
scale = {1.0, 1.0, 1.0})));
  annotation (preferredView = "text");
end Right_baseParams;
