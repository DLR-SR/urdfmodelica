within URDFModelica.Links;
model CollisionSphere
  extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;

  parameter Modelica.Units.SI.TranslationalSpringConstant c = 1e6 "Spring constant";
  parameter Modelica.Units.SI.TranslationalDampingConstant d = 1000.0 "Damping constant";
  parameter Real n_spring = 1.5 "Exponent of spring force ( f_c = -c*|s_rel-s_rel0|^n )";
  parameter Modelica.Units.SI.CoefficientOfFriction mue = 0.4 "Sliding friction coefficient";
  parameter Modelica.Units.SI.Velocity vd = 0.01 "Sliding friction velocity deadband";
  parameter Modelica.Mechanics.MultiBody.Types.Axis n_x = {1.0, 0.0, 0.0} "Tangential vector 1";
  parameter Modelica.Mechanics.MultiBody.Types.Axis n_y = {0.0, 1.0, 0.0} "Tangential vector 2";
  parameter Modelica.Mechanics.MultiBody.Types.Axis n_z = {0.0, 0.0, 1.0} "Normal vector";
  parameter Modelica.Units.SI.Length radius = 1 "sphere (icosahedron) radius";
  final parameter Modelica.Units.SI.Length golden = (1+sqrt(5)) / 2;
  final parameter Modelica.Units.SI.Length ico_radius = radius / sqrt(1+golden*golden) "for the twelve vertices";
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation[12](r = ico_radius*{{0, 1, golden}, {0, 1, -golden}, {0, -1, golden}, {0, -1, -golden}, {1, golden, 0}, {1, -golden, 0}, {-1, golden, 0}, {-1, -golden, 0}, {golden, 0, 1}, {-golden, 0, 1}, {golden, 0, -1}, {-golden, 0, -1}}, each animation = false)  annotation (
    Placement(transformation(origin = {-50, 0}, extent = {{-10, -10}, {10, 10}})));
  CollisionPoint collisionPoint[12](each c = c, each d = d, each n_spring = n_spring, each mue = mue, each vd = vd, each n_x = n_x, each n_y = n_y, each n_z = n_z)  annotation (
    Placement(transformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  for index in 1:12 loop
    connect(frame_a, fixedRotation[index].frame_a) annotation (
      Line(points = {{-100, 0}, {-60, 0}}));
    connect(collisionPoint[index].frame_b, frame_b) annotation (
      Line(points = {{0, 0}, {100, 0}}));
  end for;
  connect(fixedRotation.frame_b, collisionPoint.frame_a) annotation (
    Line(points = {{-40, 0}, {-20, 0}}, color = {95, 95, 95}));
  annotation (Icon(coordinateSystem(preserveAspectRatio = false), graphics = {
        Rectangle(
          extent = {{-100, 100}, {100, -100}},
          lineColor = {28, 108, 200},
          fillPattern = FillPattern.Solid,
          fillColor = {255, 255, 255}),
        Text(
          extent = {{-100, 140}, {100, 100}},
          lineColor = {0, 0, 0},
          textString = "%name"),
        Line(points = {{0, -60}, {0, -40}, {-20, -30}, {20, -20}, {-20, -10}, {20, 0}, {-20, 10}, {20, 20}, {0, 30}, {0, 60}}, color = {0, 0, 0},
          origin = {18, -1},
          rotation = 90),
        Rectangle(
          extent = {{-100, 20}, {100, -20}},
          lineColor = {0, 0, 0},
          fillColor = {135, 135, 135},
          fillPattern = FillPattern.Solid,
          origin = {80, 0},
          rotation = 90),
        Polygon(
          points = {{-80, 0}, {-80, 0}},
          lineColor = {0, 0, 0},
          fillColor = {215, 215, 215},
          fillPattern = FillPattern.Solid),
        Polygon(
          points = {{-50, 26}, {-50, 26}},
          lineColor = {0, 0, 0},
          fillColor = {215, 215, 215},
          fillPattern = FillPattern.Solid),
        Ellipse(
          extent = {{-100, 40}, {-20, -40}},
          lineColor = {0, 0, 0},
          fillColor = {215, 215, 215},
          fillPattern = FillPattern.Sphere)}),
      Diagram(coordinateSystem(preserveAspectRatio = false)), preferredView = "diagram");
end CollisionSphere;
