within URDFModelica.Examples_Visualization2.Physics_Wheels.Links;
record BoxParams
  extends URDFModelica.Records.Link(
name = "box",
hasVisual = true,
hasCollision = true,
inertial = URDFModelica.Records.Inertial(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0}, rpy = {0.0, 0.0, 0.0}),
mass = 1.0,
inertia = URDFModelica.Records.Inertia(ixx = 1.0,
ixy = 0.0,
ixz = 0.0,
iyy = 1.0,
iyz = 0.0,
izz = 1.0)),
visual = URDFModelica.Records.Visual(origin = URDFModelica.Records.Origin(xyz = {-0.04, 0.0, 0.0},rpy = {0, 0, 0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.box,
size = {0.08, 0.08, 0.08},
length = 1.0,
radius = 1.0,
filename = "defaultMeshPath",
scale = {1.0, 1.0, 1.0}),
material = URDFModelica.Records.Material(name = "blue",
rgba = {0.0, 0.0, 0.8, 1.0},
texture = "defaultTextureFilename")),
collision = URDFModelica.Records.Collision(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0}, rpy = {0.0, 0.0, 0.0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.box,
size = {0.08, 0.08, 0.08},
length = 1.0,
radius = 1.0,
filename = "defaultMeshPath",
scale = {1.0, 1.0, 1.0})));
  annotation (preferredView = "text");
end BoxParams;
