within URDFModelica.Examples.Physics_Wheels.Joints;
record Right_back_wheel_jointParams
  extends URDFModelica.Records.Joint(
name = "right_back_wheel_joint",
hasCalibration = false,
hasDynamics = false,
hasLimit = false,
hasMimic = false,
hasSafety_controller = false,
jointType = URDFModelica.Types.JointType.continuous,
origin = URDFModelica.Records.Origin(xyz = {-0.133333333333, 0.0, -0.085},rpy = {0.0, 0.0, 0.0}),
parent = URDFModelica.Records.Parent(link = "right_base"),
child = URDFModelica.Records.Child(link = "right_back_wheel"),
axis = URDFModelica.Records.Axis(xyz = {0.0, 1.0, 0.0}),
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
end Right_back_wheel_jointParams;
