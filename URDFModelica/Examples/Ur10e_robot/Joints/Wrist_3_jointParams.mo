within URDFModelica.Examples.Ur10e_robot.Joints;
record Wrist_3_jointParams
  extends URDFModelica.Records.Joint(
name = "wrist_3_joint",
hasCalibration = false,
hasDynamics = true,
hasLimit = true,
hasMimic = false,
hasSafety_controller = false,
jointType = URDFModelica.Types.JointType.revolute,
origin = URDFModelica.Records.Origin(xyz = {0.0, 0.11655, -2.390480459346185e-11},rpy = {1.570796326589793, 3.141592653589793, 3.141592653589793}),
parent = URDFModelica.Records.Parent(link = "wrist_2_link"),
child = URDFModelica.Records.Child(link = "wrist_3_link"),
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
end Wrist_3_jointParams;
