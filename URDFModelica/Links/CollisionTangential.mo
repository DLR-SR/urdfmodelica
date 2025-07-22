within URDFModelica.Links;
model CollisionTangential
  extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;

  parameter Modelica.Units.SI.CoefficientOfFriction mue = 0.4;
  parameter Modelica.Units.SI.Velocity vd = 0.01;
  parameter Modelica.Mechanics.MultiBody.Types.Axis n_x = { 1.0, 0.0, 0.0};
  parameter Modelica.Mechanics.MultiBody.Types.Axis n_y = {0.0, 1.0, 0.0};
  Modelica.Units.SI.Velocity v_x = n_x * relativeVelocity.v_rel;
  Modelica.Units.SI.Velocity v_y = n_y * relativeVelocity.v_rel;
  Modelica.Units.SI.Velocity v_t = sqrt(v_x^2 + v_y^2);
  Modelica.Units.SI.Force f;
  Modelica.Blocks.Interfaces.RealInput fN "Connector of Real input signal" annotation (Placement(transformation(extent = {{20,-20}, {-20, 20}}, rotation = 270, origin = {0, -120})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismaticX(animation = false, n = n_x) annotation (Placement(transformation(extent = {{-40, -10}, {-20, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismaticY(animation = false, n = n_y) annotation (Placement(transformation(extent = {{20, -10}, {40, 10}})));
  Modelica.Mechanics.MultiBody.Forces.Force force(animation = false) annotation (Placement(transformation(extent = {{-10, 20}, {10, 40}})));
  Modelica.Mechanics.MultiBody.Sensors.RelativeVelocity relativeVelocity annotation (Placement(transformation(extent = {{-10, 60}, {10, 80}})));
equation
  f = - tanh(v_t/vd) * mue * abs(fN);
  if abs(v_t) > Modelica.Constants.eps then
    force.force[1] = f * (v_x/v_t);
    force.force[2] = f * (v_y/v_t);
  else
    force.force[1] = 0.0;
    force.force[2] = 0.0;
  end if;
  force.force[3] = 0.0;
  connect(prismaticX.frame_a, frame_a) annotation (
    Line(points = {{-40, 0}, {-100, 0}}, color = {95, 95, 95}));
  connect(prismaticX.frame_b, prismaticY.frame_a) annotation (
    Line(points = {{-20, 0}, {20, 0}}, color = {95, 95, 95}));
  connect(prismaticY.frame_b, frame_b) annotation (
    Line(points = {{40, 0}, {100, 0}}, color = {95, 95, 95}));
  connect(force.frame_a, frame_a) annotation (
    Line(points = {{-10, 30}, {-100, 30}, {-100, 0}}, color = {95, 95, 95}));
  connect(force.frame_b, frame_b) annotation (
    Line(points = {{10, 30}, {100, 30}, {100, 0}}, color = {95, 95, 95}));
  connect(relativeVelocity.frame_a, frame_a) annotation (
    Line(points = {{-10, 70}, {-100, 70}, {-100, 0}}, color = {95, 95, 95}));
  connect(relativeVelocity.frame_b, frame_b) annotation (
    Line(points = {{10, 70}, {100, 70}, {100, 0}}, color = {95, 95, 95}));
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
          textString = "Friction"),
        Text(
          extent = {{-100, 0}, {100, -40}},
          lineColor = {0, 0, 0},
          textString = "n_x=%n_x"),
        Text(
          extent = {{-100, -60}, {100, -100}},
          lineColor = {0, 0, 0},
          textString = "n_y=%n_y")}),
        Diagram(coordinateSystem(preserveAspectRatio = false)),
          defaultComponentName = "friction", preferredView = "diagram");
end CollisionTangential;
