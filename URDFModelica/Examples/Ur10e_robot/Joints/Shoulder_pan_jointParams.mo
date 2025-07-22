within URDFModelica.Examples.Ur10e_robot.Joints;
record Shoulder_pan_jointParams
  extends URDFModelica.Records.Joint(
name = "shoulder_pan_joint",
hasCalibration = false,
hasDynamics = true,
hasLimit = true,
hasMimic = false,
hasSafety_controller = false,
jointType = URDFModelica.Types.JointType.revolute,
origin = URDFModelica.Records.Origin(xyz = {0.0, 0.0, 0.1807},rpy = {0.0, 0.0, 0.0}),
parent = URDFModelica.Records.Parent(link = "base_link_inertia"),
child = URDFModelica.Records.Child(link = "shoulder_link"),
axis = URDFModelica.Records.Axis(xyz = {0.0, 0.0, 1.0}),
calibration = URDFModelica.Records.Calibration(rising = 0.0, falling = 0.0),
dynamics = URDFModelica.Records.Dynamics(damping = 0.0, friction = 0.0),
limit = URDFModelica.Records.Limit(lower = -6.283185307179586,
upper = 6.283185307179586,
effort = 330.0,
velocity = 2.0943951023931953),
mimic = URDFModelica.Records.Mimic(joint = "defaultJointName",
multiplier = 1.0,
offset = 0.0),
safety_controller = URDFModelica.Records.Safety_controller(soft_lower_limit = 0.0,
soft_upper_limit = 0.0,
k_position = 0.0,
k_velocity = 0.0));
  annotation (preferredView = "text");
end Shoulder_pan_jointParams;
