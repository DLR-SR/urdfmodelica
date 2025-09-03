within URDFModelica.Examples_Visualization2.Ur10e_robot.Joints;
record Elbow_jointParams
  extends URDFModelica.Records.Joint(
name = "elbow_joint",
hasCalibration = false,
hasDynamics = true,
hasLimit = true,
hasMimic = false,
hasSafety_controller = false,
jointType = URDFModelica.Types.JointType.revolute,
origin = URDFModelica.Records.Origin(xyz = {-0.6127, 0.0, 0.0},rpy = {0.0, 0.0, 0.0}),
parent = URDFModelica.Records.Parent(link = "upper_arm_link"),
child = URDFModelica.Records.Child(link = "forearm_link"),
axis = URDFModelica.Records.Axis(xyz = {0.0, 0.0, 1.0}),
calibration = URDFModelica.Records.Calibration(rising = 0.0, falling = 0.0),
dynamics = URDFModelica.Records.Dynamics(damping = 0.0, friction = 0.0),
limit = URDFModelica.Records.Limit(lower = -3.141592653589793,
upper = 3.141592653589793,
effort = 150.0,
velocity = 3.141592653589793),
mimic = URDFModelica.Records.Mimic(joint = "defaultJointName",
multiplier = 1.0,
offset = 0.0),
safety_controller = URDFModelica.Records.Safety_controller(soft_lower_limit = 0.0,
soft_upper_limit = 0.0,
k_position = 0.0,
k_velocity = 0.0));
  annotation (preferredView = "text");
end Elbow_jointParams;
