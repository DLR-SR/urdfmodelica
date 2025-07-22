within URDFModelica.Examples.GenericRobotModel;
model GenericRobot
  extends Modelica.Icons.Example;

  parameter RobotRecords.ur10e_robot robotData annotation (Placement(transformation(extent = {{-100, 80}, {-80, 100}})));

  Robot.Robot robot(robotParams = robotData,
    enableCollision = false,
    enableInertial = false,
    showLinkFrames = false)
    annotation (Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  inner Modelica.Mechanics.MultiBody.World world(
    label2 = "z",
    n = {0, 0, -1},
    enableAnimation = true)
    annotation (Placement(transformation(extent = {{-48, -10}, {-28, 10}})));
  Modelica.Mechanics.Rotational.Sources.Position position[robot.numAxes](each exact = true)
    annotation (Placement(transformation(origin = {-20, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.KinematicPTP2 kinematicPTP(q_begin = zeros(robot.numAxes), q_end = ones(robot.numAxes), qd_max = 0.1*ones(robot.numAxes), qdd_max = 0.01*ones(robot.numAxes), startTime = 1.0)
    annotation (Placement(transformation(extent = {{-80, 20}, {-60, 40}})));

equation
  connect(robot.frame_a, world.frame_b) annotation (
    Line(points = {{-10, 0}, {-28, 0}}, color = {95, 95, 95}, thickness = 0.5));
  connect(position.flange, robot.flange_a) annotation (Line(points = {{-10, 30}, {0, 30}, {0, 10}}, thickness = 0.5));
  connect(kinematicPTP.q, position.phi_ref) annotation (Line(points = {{-59, 38}, {-40, 38}, {-40, 30}, {-32, 30}}, color = {0, 0, 127}));
  annotation (
    experiment(StartTime = 0.0, StopTime = 25.0, Tolerance = 1e-06, Interval = 0.05), preferredView = "diagram");
end GenericRobot;
