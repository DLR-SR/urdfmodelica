within URDFModelica.Examples_Visualization2.Physics_Wheels.Joints;
record Gripper_extensionParams
  extends URDFModelica.Records.Joint(
name = "gripper_extension",
hasCalibration = false,
hasDynamics = false,
hasLimit = true,
hasMimic = false,
hasSafety_controller = false,
jointType = URDFModelica.Types.JointType.prismatic,
origin = URDFModelica.Records.Origin(xyz = {0.19, 0.0, 0.2},rpy = {0.0, 0.0, 0.0}),
parent = URDFModelica.Records.Parent(link = "base_link"),
child = URDFModelica.Records.Child(link = "gripper_pole"),
axis = URDFModelica.Records.Axis(xyz = {1.0, 0.0, 0.0}),
calibration = URDFModelica.Records.Calibration(rising = 0.0, falling = 0.0),
dynamics = URDFModelica.Records.Dynamics(damping = 0.0, friction = 0.0),
limit = URDFModelica.Records.Limit(lower = -0.38,
upper = 0.0,
effort = 1000.0,
velocity = 0.5),
mimic = URDFModelica.Records.Mimic(joint = "defaultJointName",
multiplier = 1.0,
offset = 0.0),
safety_controller = URDFModelica.Records.Safety_controller(soft_lower_limit = 0.0,
soft_upper_limit = 0.0,
k_position = 0.0,
k_velocity = 0.0));
  annotation (preferredView = "text");
end Gripper_extensionParams;
