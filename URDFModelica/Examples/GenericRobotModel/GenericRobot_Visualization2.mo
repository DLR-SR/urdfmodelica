within URDFModelica.Examples.GenericRobotModel;
model GenericRobot_Visualization2
  extends GenericRobot(world(enableAnimation = false), robot(redeclare Links.Link_Visualization2 link));
  inner Visualization2.VisualizationSetup visualizationSetup annotation (Placement(transformation(extent = {{80, 80}, {100, 100}})));
  annotation (
    experiment(StartTime = 0.0, StopTime = 25.0, Tolerance = 1e-06, Interval = 0.05), preferredView = "diagram");
end GenericRobot_Visualization2;
