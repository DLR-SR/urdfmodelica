within URDFModelica.Examples.Ur10e_robot.Joints;
record Wrist_3_flangeParams
  extends URDFModelica.Records.Joint(
name = "wrist_3-flange",
hasCalibration = false,
hasDynamics = false,
hasLimit = false,
hasMimic = false,
hasSafety_controller = false,
jointType = URDFModelica.Types.JointType.fixedJoint,
origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.0},rpy = {0.0, -1.5707963267948966, -1.5707963267948966}),
parent = URDFModelica.Records.Parent(link = "wrist_3_link"),
child = URDFModelica.Records.Child(link = "flange"),
axis = URDFModelica.Records.Axis(xyz = {1.0, 0.0, 0.0}),
calibration = URDFModelica.Records.Calibration(rising = 0.0, falling = 0.0),
dynamics = URDFModelica.Records.Dynamics(damping = 0.0, friction = 0.0),
limit = URDFModelica.Records.Limit(lower = 0.0,
upper = 0.0,
effort = 0.0,
velocity = 0.0),
mimic = URDFModelica.Records.Mimic(joint = "defaultJointName",
multiplier = 1.0,
offset = 0.0),
safety_controller = URDFModelica.Records.Safety_controller(soft_lower_limit = 0.0,
soft_upper_limit = 0.0,
k_position = 0.0,
k_velocity = 0.0));
  annotation (preferredView = "text");
end Wrist_3_flangeParams;
