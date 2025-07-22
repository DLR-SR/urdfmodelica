within URDFModelica.Examples.Ur10e_robot.Links;
record Upper_arm_linkParams
  extends URDFModelica.Records.Link(
name = "upper_arm_link",
hasVisual = true,
hasCollision = true,
inertial = URDFModelica.Records.Inertial(origin = URDFModelica.Records.Origin(xyz = {-0.306, 0.0, 0.175},rpy = {0.0, 1.5707963267948966, 0.0}),
mass = 12.93,
inertia = URDFModelica.Records.Inertia(ixx = 0.42175380379841093,
ixy = 0.0,
ixz = 0.0,
iyy = 0.42175380379841093,
iyz = 0.0,
izz = 0.03636562499999999)),
visual = URDFModelica.Records.Visual(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.1762},rpy = {1.5707963267948966, 0.0, -1.5707963267948966}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.mesh,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "modelica://URDFModelica/Resources/ur10e/visual/upperarm.stl",
scale = {1.0, 1.0, 1.0}),
material = URDFModelica.Records.Material(name = "LightGrey",
rgba = {0.7, 0.7, 0.7, 1.0},
texture = "defaultTextureFilename")),
collision = URDFModelica.Records.Collision(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.1762},rpy = {1.5707963267948966, 0.0, -1.5707963267948966}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.mesh,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "modelica://URDFModelica/Resources/ur10e/collision/upperarm.stl",
scale = {1.0, 1.0, 1.0})));
  annotation (preferredView = "text");
end Upper_arm_linkParams;
