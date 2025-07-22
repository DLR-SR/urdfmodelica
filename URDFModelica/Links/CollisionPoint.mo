within URDFModelica.Links;
model CollisionPoint
  extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;

  parameter Modelica.Units.SI.TranslationalSpringConstant c = 1e6 "Spring constant";
  parameter Modelica.Units.SI.TranslationalDampingConstant d = 1000.0 "Damping constant";
  parameter Real n_spring = 1.5 "Exponent of spring force ( f_c = -c*|s_rel-s_rel0|^n )";
  parameter Modelica.Units.SI.CoefficientOfFriction mue = 0.4 "Sliding friction coefficient";
  parameter Modelica.Units.SI.Velocity vd = 0.01 "Sliding friction velocity deadband";
  parameter Modelica.Mechanics.MultiBody.Types.Axis n_x = {1.0, 0.0, 0.0} "Tangential vector 1";
  parameter Modelica.Mechanics.MultiBody.Types.Axis n_y = {0.0, 1.0, 0.0} "Tangential vector 2";
  parameter Modelica.Mechanics.MultiBody.Types.Axis n_z = {0.0, 0.0, 1.0} "Normal vector";
  Modelica.Mechanics.MultiBody.Joints.Spherical spherical(animation = false)  annotation (
    Placement(transformation(origin = {-50, 0}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  CollisionNormal collisionNormal(c = c, d = d, n_spring = n_spring, n = n_z)  annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}})));
  CollisionTangential friction(mue = mue, vd = vd, n_x = n_x, n_y = n_y)  annotation (
    Placement(transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(frame_a, spherical.frame_b) annotation (
    Line(points = {{-100, 0}, {-60, 0}}));
  connect(collisionNormal.frame_a, spherical.frame_a) annotation (
    Line(points = {{-10, 0}, {-40, 0}}, color = {95, 95, 95}));
  connect(collisionNormal.frame_b, friction.frame_a) annotation (
    Line(points = {{10, 0}, {40, 0}}, color = {95, 95, 95}));
  connect(frame_b, friction.frame_b) annotation (
    Line(points = {{100, 0}, {60, 0}}));
  connect(collisionNormal.fN, friction.fN) annotation (
    Line(points={{0,-11},{0,-20},{50,-20},{50,-12}}, color = {0, 0, 127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio = false), graphics = {
        Rectangle(
          extent = {{-100, 100}, {100, -100}},
          lineColor = {0, 0, 0},
          fillColor = {255, 255, 255},
          fillPattern = FillPattern.Solid),
        Text(
          extent = {{-240, 140}, {240, 100}},
          lineColor = {0, 0, 0},
          textString = "%name"),
        Line(points = {{0, -60}, {0, -40}, {-20, -30}, {20, -20}, {-20, -10}, {20, 0}, {-20, 10}, {20, 20}, {0, 30}, {0, 60}}, color = {0, 0, 0},
          origin = {0, -1},
          rotation = 90),
        Ellipse(
          extent = {{-60, 60}, {60, -60}},
          lineColor = {0, 0, 0},
          fillColor = {215, 215, 215},
          fillPattern = FillPattern.Solid,
          startAngle = 0,
          endAngle = 180,
          origin = {-100, 0},
          rotation = 90),
        Rectangle(
          extent = {{-100, 20}, {100, -20}},
          lineColor = {0, 0, 0},
          fillColor = {135, 135, 135},
          fillPattern = FillPattern.Solid,
          origin = {80, 0},
          rotation = 90)}),
      Diagram(coordinateSystem(preserveAspectRatio = false)), preferredView = "diagram");
end CollisionPoint;
