within URDFModelica.Examples.GenericRobotModel;
model GenericRobot_Visualization2
  extends GenericRobot(world(enableAnimation = false), robot(redeclare Links.Link_Visualization2 link));
  inner Visualization2.VisualizationSetup visualizationSetup annotation (Placement(transformation(extent = {{80, 80}, {100, 100}})));
end GenericRobot_Visualization2;
