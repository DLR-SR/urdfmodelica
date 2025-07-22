within URDFModelica.Links;
model CollisionNormal
  extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;

  parameter Modelica.Units.SI.TranslationalSpringConstant c = 1e6 "Spring constant";
  parameter Modelica.Units.SI.TranslationalDampingConstant d = 1000.0 "Damping constant";
  parameter Real n_spring = 1.5 "Exponent of spring force ( f_c = -c*|s_rel-s_rel0|^n )";
  parameter Modelica.Mechanics.MultiBody.Types.Axis n = {0.0, 0.0, 1.0} "Axis of translation resolved in frame_a (= same as in frame_b)";
  Modelica.Mechanics.Translational.Sensors.ForceSensor forceSensor annotation (Placement(transformation(extent = {{-10, -10}, {10, 10}}, origin = {50, 50})));
  Modelica.Mechanics.Translational.Components.ElastoGap elastoGap(c = c, d = d, n = n_spring) annotation (Placement(transformation(extent = {{0, 40}, {-20, 60}})));
  Modelica.Blocks.Interfaces.RealOutput fN "Normal Force" annotation (Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 270, origin = {0, -110})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismaticZ(useAxisFlange = true, animation = false, n = n) annotation (Placement(transformation(extent = {{-20, -10}, {0, 10}})));
equation
  connect(forceSensor.f, fN) annotation (
    Line(points = {{42, 39},{42, -110}, {0, -110}}, color = {0, 0, 127}));
  connect(forceSensor.flange_b, prismaticZ.axis) annotation (
    Line(points = {{60, 50}, {60, 6}, {-2, 6}},color = {0, 127, 0}));
  connect(prismaticZ.frame_a, frame_a) annotation (
    Line(points = {{-20, 0}, {-100, 0}}, color = {95, 95, 95}));
  connect(prismaticZ.frame_b, frame_b) annotation (
    Line( points = {{0, 0}, {100, 0}}, color = {95, 95, 95}));
  connect(elastoGap.flange_a, forceSensor.flange_a) annotation (
    Line(points = {{0, 50}, {40, 50}}, color = {0, 127, 0}));
  connect(elastoGap.flange_b, prismaticZ.support) annotation (
    Line(points = {{-20, 50}, {-34, 50}, {-34, 24}, {-14, 24}, {-14, 6}}, color = {0, 127, 0}));
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
        Text(
          extent = {{-100, 80}, {100, 40}},
          lineColor = {0, 0, 0},
          textString = "Normal"),
        Text(
          extent = {{-100, -40}, {100, -80}},
          lineColor = {0, 0, 0},
          textString = "n=%n")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)), preferredView = "diagram");
end CollisionNormal;
