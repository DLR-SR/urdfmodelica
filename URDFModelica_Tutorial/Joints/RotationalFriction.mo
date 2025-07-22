within URDFModelica_Tutorial.Joints;
model RotationalFriction
  extends URDFModelica_Tutorial.Icons.BaseIcon;
  extends Modelica.Mechanics.Rotational.Interfaces.PartialElementaryTwoFlangesAndSupport2(final useSupport=false);
  parameter Modelica.Units.SI.Torque Rh = 0 "sticking friction";
  parameter Real Rv(unit = "N.m.s/rad") = 1 "viscous friction coefficient";
  parameter Real steep = 100 "steepness of sticking friction approximation";
  Modelica.Units.SI.Torque tau_r "Friction torque";
  Modelica.Units.SI.AngularVelocity w "Absolute angular velocity of flange_a and flange_b";
  Modelica.Units.SI.Angle phi "Angle between shaft flanges (flange_a, flange_b) and support";
equation
  tau_r = Rv * w + 2 * Rh / (1 + exp(-steep * w)) - Rh;
  phi = flange_a.phi - phi_support;
  w = der(phi);
  flange_b.phi = flange_a.phi;
  0 = flange_a.tau + flange_b.tau - tau_r "Equilibrium of torques";
  annotation (Diagram(graphics), Icon(graphics = {
        Rectangle(
          extent = {{-100, 10}, {100, -10}},
          lineColor = {0, 0, 0},
          fillPattern = FillPattern.HorizontalCylinder,
          fillColor = {192, 192, 192}),
        Rectangle(
          extent = {{-60, -10}, {60, -60}},
          lineColor = {0, 0, 0}),
        Rectangle(
          extent = {{-60, -10}, {60, -25}},
          lineColor = {0, 0, 0},
          fillColor = {192, 192, 192},
          fillPattern = FillPattern.Solid),
        Rectangle(
          extent = {{-60, -45}, {60, -61}},
          lineColor = {0, 0, 0},
          fillColor = {192, 192, 192},
          fillPattern = FillPattern.Solid),
        Rectangle(
          extent = {{-50, -18}, {50, -50}},
          lineColor = {0, 0, 0},
          fillColor = {255, 255, 255},
          fillPattern = FillPattern.Solid),
        Polygon(
          points = {{60, -60}, {60, -70}, {75, -70}, {75, -80}, {-75, -80}, {-75, -70}, {-60, -70}, {-60, -60}, {60, -60}},
          lineColor = {0, 0, 0},
          fillColor = {160, 160, 164},
          fillPattern = FillPattern.Solid),
        Line(
          points = {{-75, -10}, {-75, -70}},
          color = {0, 0, 0}),
        Line(
          points = {{75, -10}, {75, -70}},
          color = {0, 0, 0}),
        Rectangle(
          extent = {{-60, 60}, {60, 10}},
          lineColor = {0, 0, 0}),
        Rectangle(
          extent = {{-60, 60}, {60, 45}},
          lineColor = {0, 0, 0},
          fillColor = {192, 192, 192},
          fillPattern = FillPattern.Solid),
        Rectangle(
          extent = {{-60, 25}, {60, 10}},
          lineColor = {0, 0, 0},
          fillColor = {192, 192, 192},
          fillPattern = FillPattern.Solid),
        Rectangle(
          extent = {{-50, 51}, {50, 19}},
          lineColor = {0, 0, 0},
          fillColor = {255, 255, 255},
          fillPattern = FillPattern.Solid),
        Line(
          points = {{-75, 70}, {-75, 10}},
          color = {0, 0, 0}),
        Polygon(
          points = {{60, 60}, {60, 70}, {75, 70}, {75, 80}, {-75, 80}, {-75, 70}, {-60, 70}, {-60, 60}, {60, 60}},
          lineColor = {0, 0, 0},
          fillColor = {160, 160, 164},
          fillPattern = FillPattern.Solid),
        Line(
          points = {{75, 70}, {75, 10}},
          color = {0, 0, 0}),
        Text(
          extent = {{-150, 150}, {150, 110}},
          textString = "%name",
          lineColor = {0, 0, 255})}), preferredView = "text");
end RotationalFriction;
