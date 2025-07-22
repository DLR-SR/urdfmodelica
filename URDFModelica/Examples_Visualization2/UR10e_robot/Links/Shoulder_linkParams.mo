within URDFModelica.Examples_Visualization2.Ur10e_robot.Links;
record Shoulder_linkParams
  extends URDFModelica.Records.Link(
name = "shoulder_link",
hasVisual = true,
hasCollision = true,
inertial = URDFModelica.Records.Inertial(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0},rpy = {0.0, 0.0, 0.0}),
mass = 7.778,
inertia = URDFModelica.Records.Inertia(ixx = 0.03147431257693659,
ixy = 0.0,
ixz = 0.0,
iyy = 0.03147431257693659,
iyz = 0.0,
izz = 0.021875624999999996)),
visual = URDFModelica.Records.Visual(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0},rpy = {0.0, 0.0, 3.141592653589793}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.mesh,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "modelica://URDFModelica/Resources/ur10e/visual/shoulder.stl",
scale = {1.0, 1.0, 1.0}),
material = URDFModelica.Records.Material(name = "LightGrey",
rgba = {0.7, 0.7, 0.7, 1.0},
texture = "defaultTextureFilename")),
collision = URDFModelica.Records.Collision(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0},rpy = {0.0, 0.0, 3.141592653589793}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.mesh,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "modelica://URDFModelica/Resources/ur10e/collision/shoulder.stl",
scale = {1.0, 1.0, 1.0})));
  annotation (preferredView = "text");
end Shoulder_linkParams;
