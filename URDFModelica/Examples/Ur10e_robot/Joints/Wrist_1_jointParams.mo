within URDFModelica.Examples.Ur10e_robot.Joints;
record Wrist_1_jointParams
  extends URDFModelica.Records.Joint(
name = "wrist_1_joint",
hasCalibration = false,
hasDynamics = true,
hasLimit = true,
hasMimic = false,
hasSafety_controller = false,
jointType = URDFModelica.Types.JointType.revolute,
origin = URDFModelica.Records.Origin(xyz = {-0.57155, 0.0, 0.17415},rpy = {0.0, 0.0, 0.0}),
parent = URDFModelica.Records.Parent(link = "forearm_link"),
child = URDFModelica.Records.Child(link = "wrist_1_link"),
axis = URDFModelica.Records.Axis(xyz = {0.0, 0.0, 1.0}),
calibration = URDFModelica.Records.Calibration(rising = 0.0, falling = 0.0),
dynamics = URDFModelica.Records.Dynamics(damping = 0.0, friction = 0.0),
limit = URDFModelica.Records.Limit(lower = -6.283185307179586,
upper = 6.283185307179586,
effort = 56.0,
velocity = 3.141592653589793),
mimic = URDFModelica.Records.Mimic(joint = "defaultJointName",
multiplier = 1.0,
offset = 0.0),
safety_controller = URDFModelica.Records.Safety_controller(soft_lower_limit = 0.0,
soft_upper_limit = 0.0,
k_position = 0.0,
k_velocity = 0.0));
  annotation (preferredView = "text");
end Wrist_1_jointParams;
