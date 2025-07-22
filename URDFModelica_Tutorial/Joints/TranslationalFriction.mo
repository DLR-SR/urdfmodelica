within URDFModelica_Tutorial.Joints;
model TranslationalFriction
  extends URDFModelica_Tutorial.Icons.BaseIcon;
  extends Modelica.Mechanics.Translational.Interfaces.PartialElementaryTwoFlangesAndSupport2(final useSupport=false);
  parameter Modelica.Units.SI.Force Rh = 0 "sticking friction";
  parameter Real Rv(unit = "N.s/m") = 1 "viscous friction coefficient";
  parameter Real steep = 100 "steepness of sticking friction approximation";
  Modelica.Units.SI.Force f_r "Friction force";
  Modelica.Units.SI.Velocity v "Absolute velocity of flange_a and flange_b";
  Modelica.Units.SI.Position s "Postion between shaft flanges (flange_a, flange_b) and support";
equation
  f_r = Rv * v + 2 * Rh / (1 + exp(-steep * v)) - Rh;
  s = flange_a.s - s_support;
  v = der(s);
  flange_b.s = flange_a.s;
  0 = flange_a.f + flange_b.f - f_r "Equilibrium of forces";
  annotation (Diagram(graphics), Icon(graphics = {
        Polygon(
          points = {{-50, -50}, {-10, -90}, {-10, -100}, {10, -100}, {10, -90}, {50, -50}, {-50, -50}},
          lineColor = {95, 95, 95},
          fillColor = {131, 175, 131},
          fillPattern = FillPattern.Solid),
        Ellipse(
          extent = {{-48, -10}, {-28, -30}},
          lineColor = {0, 127, 0},
          fillPattern = FillPattern.Sphere,
          fillColor = {255, 255, 255}),
        Ellipse(
          extent = {{-10, -10}, {10, -30}},
          lineColor = {0, 127, 0},
          fillPattern = FillPattern.Sphere,
          fillColor = {255, 255, 255}),
        Ellipse(
          extent = {{30, -10}, {50, -30}},
          lineColor = {0, 127, 0},
          fillPattern = FillPattern.Sphere,
          fillColor = {255, 255, 255}),
        Ellipse(
          extent = {{-50, 30}, {-30, 10}},
          lineColor = {0, 127, 0},
          fillPattern = FillPattern.Sphere,
          fillColor = {255, 255, 255}),
        Ellipse(
          extent = {{-10, 30}, {10, 10}},
          lineColor = {0, 127, 0},
          fillPattern = FillPattern.Sphere,
          fillColor = {255, 255, 255}),
        Ellipse(
          extent = {{30, 30}, {50, 10}},
          lineColor = {0, 127, 0},
          fillPattern = FillPattern.Sphere,
          fillColor = {255, 255, 255}),
        Rectangle(
          extent = {{-90, 10}, {90, -10}},
          lineColor = {0, 127, 0},
          fillColor = {160, 215, 160},
          fillPattern = FillPattern.Solid),
        Polygon(
          points = {{-60, 30}, {60, 30}, {60, 20}, {80, 20}, {80, 50}, {-80, 50}, {-80, 20}, {-60, 20}, {-60, 30}},
          lineColor = {95, 95, 95},
          fillPattern = FillPattern.Solid,
          fillColor = {131, 175, 131}),
        Polygon(
          points = {{-60, -30}, {60, -30}, {60, -20}, {80, -20}, {80, -50}, {-80, -50}, {-80, -20}, {-60, -20}, {-60, -30}},
          lineColor = {95, 95, 95},
          fillPattern = FillPattern.Solid,
          fillColor = {131, 175, 131}),
        Text(
          extent = {{-150, 150}, {150, 110}},
          textString = "%name",
          lineColor = {0, 0, 255})}), preferredView = "text");
end TranslationalFriction;
