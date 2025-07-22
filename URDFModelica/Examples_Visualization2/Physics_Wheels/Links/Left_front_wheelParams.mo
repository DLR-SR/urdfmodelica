within URDFModelica.Examples_Visualization2.Physics_Wheels.Links;
record Left_front_wheelParams
  extends URDFModelica.Records.Link(
name = "left_front_wheel",
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
visual = URDFModelica.Records.Visual(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0},rpy = {1.57075, 0.0, 0.0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.cylinder,
size = {1.0, 1.0, 1.0},
length = 0.1,
radius = 0.035,
filename = "defaultMeshPath",
scale = {1.0, 1.0, 1.0}),
material = URDFModelica.Records.Material(name = "black",
rgba = {0.0, 0.0, 0.0, 1.0},
texture = "defaultTextureFilename")),
collision = URDFModelica.Records.Collision(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0},rpy = {1.57075, 0.0, 0.0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.cylinder,
size = {1.0, 1.0, 1.0},
length = 0.1,
radius = 0.035,
filename = "defaultMeshPath",
scale = {1.0, 1.0, 1.0})));
  annotation (preferredView = "text");
end Left_front_wheelParams;
