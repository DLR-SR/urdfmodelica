within URDFModelica.Examples_Visualization2.Ur10e_robot.Links;
record Base_linkParams
  extends URDFModelica.Records.Link(
name = "base_link",
hasVisual = false,
hasCollision = false,
inertial = URDFModelica.Records.Inertial(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0}, rpy = {0.0, 0.0, 0.0}),
mass = 0.0,
inertia = URDFModelica.Records.Inertia(ixx = 0.0,
ixy = 0.0,
ixz = 0.0,
iyy = 0.0,
iyz = 0.0,
izz = 0.0)),
visual = URDFModelica.Records.Visual(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0}, rpy = {0.0, 0.0, 0.0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.sphere,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "defaultMeshPath",
scale = {1.0, 1.0, 1.0}),
material = URDFModelica.Records.Material(name = "defaultMaterialName",
rgba = {0.5, 0.5, 0.5, 1.0},
texture = "defaultTextureFilename")),
collision = URDFModelica.Records.Collision(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0}, rpy = {0.0, 0.0, 0.0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.sphere,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "defaultMeshPath",
scale = {1.0, 1.0, 1.0})));
  annotation (preferredView = "text");
end Base_linkParams;
