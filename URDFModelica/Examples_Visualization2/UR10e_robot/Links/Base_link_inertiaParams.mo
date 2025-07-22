within URDFModelica.Examples_Visualization2.Ur10e_robot.Links;
record Base_link_inertiaParams
  extends URDFModelica.Records.Link(
name = "base_link_inertia",
hasVisual = true,
hasCollision = true,
inertial = URDFModelica.Records.Inertial(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0},rpy = {0.0, 0.0, 0.0}),
mass = 4.0,
inertia = URDFModelica.Records.Inertia(ixx = 0.0061063308908,
ixy = 0.0,
ixz = 0.0,
iyy = 0.0061063308908,
iyz = 0.0,
izz = 0.01125)),
visual = URDFModelica.Records.Visual(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0},rpy = {0.0, 0.0, 3.141592653589793}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.mesh,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "modelica://URDFModelica/Resources/ur10e/visual/base.stl",
scale = {1.0, 1.0, 1.0}),
material = URDFModelica.Records.Material(name = "LightGrey",
rgba = {0.7, 0.7, 0.7, 1.0},
texture = "defaultTextureFilename")),
collision = URDFModelica.Records.Collision(origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0},rpy = {0.0, 0.0, 3.141592653589793}),
geometry = URDFModelica.Records.Geometry(geometryType = URDFModelica.Types.GeometryType.mesh,
size = {1.0, 1.0, 1.0},
length = 1.0,
radius = 1.0,
filename = "modelica://URDFModelica/Resources/ur10e/collision/base.stl",
scale = {1.0, 1.0, 1.0})));
  annotation (preferredView = "text");
end Base_link_inertiaParams;
