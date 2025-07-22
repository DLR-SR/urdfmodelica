within URDFModelica_Tutorial.Records;
record Robot "Robot with links and joints from URDF"
  extends Modelica.Icons.Record;
  parameter String name = "defaultRobotName";

  parameter Integer numLinks = 1;
  parameter Integer numJoints = 1;
  parameter Integer numAxes = 1 "Moveable Joints";

  parameter Integer connectionMatrix[numJoints, 2] = zeros(numJoints, 2)
    "Each row contains parent and child link index of a joint";
  parameter Integer moveableJoints[numAxes, 2] = zeros(numAxes, 2)
    "First column joint index of a moveable joint, second column DOF of joint";
  parameter Link link[:] = fill(Link(),numLinks) annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  parameter Joint joint[:] = fill(Joint(),numJoints) annotation (
    Placement(transformation(extent = {{-10, -60}, {10, -40}})));
  annotation (preferredView = "text");
end Robot;
