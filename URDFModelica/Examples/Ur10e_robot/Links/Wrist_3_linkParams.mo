within URDFModelica.Examples.Ur10e_robot.Links;
record Wrist_3_linkParams
  extends URDFModelica.Records.Link(
name = "wrist_3_link",
hasVisual = true,
hasCollision = true,
inertial = URDFModelica.Records.Inertial(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, -0.025},rpy = {0.0, 0.0, 0.0}),
mass = 0.202,
inertia = URDFModelica.Records.Inertia(ixx = 0.00014434577559500002,
ixy = 0.0,
ixz = 0.0,
iyy = 0.00014434577559500002,
iyz = 0.0,
izz = 0.00020452500000000002)),
visual = URDFModelica.Records.Visual(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, -0.1168},rpy = {1.5707963267948966, 0.0, 0.0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.mesh,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "modelica://URDFModelica/Resources/ur10e/visual/wrist3.stl",
scale = {1.0, 1.0, 1.0}),
material = URDFModelica.Records.Material(name = "LightGrey",
rgba = {0.7, 0.7, 0.7, 1.0},
texture = "defaultTextureFilename")),
collision = URDFModelica.Records.Collision(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, -0.1168},rpy = {1.5707963267948966, 0.0, 0.0}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.mesh,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "modelica://URDFModelica/Resources/ur10e/collision/wrist3.stl",
scale = {1.0, 1.0, 1.0})));
  annotation (preferredView = "text");
end Wrist_3_linkParams;
