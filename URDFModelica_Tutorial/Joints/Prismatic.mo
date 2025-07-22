within URDFModelica_Tutorial.Joints;
model Prismatic
  extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;
  replaceable parameter URDFModelica_Tutorial.Records.Joint jointParams
    constrainedby URDFModelica_Tutorial.Records.Joint annotation (Placement(transformation(extent = {{-100, 80}, {-80, 100}})), choicesAllMatching = true);
  parameter Integer flangeIndex = 0;
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angles = Modelica.Units.Conversions.to_deg({jointParams.origin.rpy[3], jointParams.origin.rpy[2], jointParams.origin.rpy[1]}), r = jointParams.origin.xyz, rotationType = Modelica.Mechanics.MultiBody.Types.RotationTypes.PlanarRotationSequence, sequence = {3, 2, 1}, animation = false) annotation (
    Placement(transformation(origin = {-70, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange = true, n = jointParams.axis.xyz, animation = false) annotation (
    Placement(transformation(origin = {10, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.GreaterThreshold posLimitHigh(threshold = jointParams.limit.upper) annotation (
    Placement(transformation(origin = {70, 80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.LessThreshold posLimitLow(threshold = jointParams.limit.lower) annotation (
    Placement(transformation(origin = {70, 60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.GreaterThreshold speedLimitHigh(threshold = jointParams.limit.velocity) annotation (
    Placement(transformation(origin = {70, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.LessThreshold speedLimitLow(threshold = -jointParams.limit.velocity) annotation (
    Placement(transformation(origin = {70, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.GreaterThreshold forceLimitHigh(threshold = jointParams.limit.effort) annotation (
    Placement(transformation(origin = {70, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.LessThreshold forceLimitLow(threshold = -jointParams.limit.effort) annotation (
    Placement(transformation(origin = {70, -20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Interfaces.Flange_a flange_a annotation (
    Placement(transformation(origin = {0, 100}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {0, 100}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Interfaces.Flange_b flange_b annotation (
    Placement(transformation(origin = {-50, 100}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-50, 100}, extent = {{-10, -10}, {10, 10}})));
  URDFModelica_Tutorial.Joints.TranslationalFriction dynamic(Rh=jointParams.dynamics.friction, Rv=jointParams.dynamics.damping) if jointParams.hasDynamics annotation (Placement(transformation(
        origin={10,80},
        extent={{-10,10},{10,-10}},
        rotation=-90)));
  Modelica.Mechanics.Translational.Sensors.ForceSensor forceSensor annotation (
    Placement(transformation(origin = {10, -8}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionSensor annotation (
    Placement(transformation(origin = {30, 50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Sensors.SpeedSensor speedSensor annotation (
    Placement(transformation(origin = {30, 30}, extent = {{-10, -10}, {10, 10}})));
equation
  assert(not posLimitHigh.y, "Joint position over high limit", AssertionLevel.warning);
  assert(not posLimitLow.y, "Joint position over low limit", AssertionLevel.warning);
  assert(not speedLimitHigh.y, "Joint speed over high limit", AssertionLevel.warning);
  assert(not speedLimitLow.y, "Joint speed over low limit", AssertionLevel.warning);
  assert(not forceLimitHigh.y, "Joint force over high limit", AssertionLevel.warning);
  assert(not forceLimitLow.y, "Joint force over low limit", AssertionLevel.warning);
  connect(frame_a, fixedRotation.frame_a) annotation (
    Line(points = {{-100, 0}, {-80, 0}}));
  connect(fixedRotation.frame_b, prismatic.frame_a) annotation (
    Line(points = {{-60, 0}, {-60, -40}, {0, -40}}, color = {95, 95, 95}));
  connect(prismatic.frame_b, frame_b) annotation (
    Line(points = {{20, -40}, {100, -40}, {100, 0}}, color = {95, 95, 95}));
  if jointParams.hasDynamics then
    connect(flange_a, dynamic.flange_a) annotation (
      Line(points = {{0, 100}, {10, 100}, {10, 90}}, color = {0, 127, 0}));
    connect(dynamic.flange_b, forceSensor.flange_a) annotation (
      Line(points = {{10, 70}, {10, 2}}, color = {0, 127, 0}));
  else
    connect(flange_a, forceSensor.flange_a) annotation (
      Line(points = {{0, 100}, {10, 100}, {10, 2}}, color = {0, 127, 0}));
  end if;
  connect(forceSensor.flange_b, prismatic.axis) annotation (
    Line(points = {{10, -18}, {10, -34}, {18, -34}}, color = {0, 127, 0}));
  connect(forceSensor.f, forceLimitHigh.u) annotation (
    Line(points = {{21, 0}, {58, 0}}, color = {0, 0, 127}));
  connect(forceSensor.f, forceLimitLow.u) annotation (
    Line(points = {{21, 0}, {20, 0}, {20, -20}, {58, -20}}, color = {0, 0, 127}));
  connect(positionSensor.flange, forceSensor.flange_a) annotation (
    Line(points = {{20, 50}, {10, 50}, {10, 2}}, color = {0, 127, 0}));
  connect(speedSensor.flange, forceSensor.flange_a) annotation (
    Line(points = {{20, 30}, {10, 30}, {10, 2}}, color = {0, 127, 0}));
  connect(speedSensor.v, speedLimitLow.u) annotation (
    Line(points = {{41, 30}, {50, 30}, {50, 20}, {58, 20}}, color = {0, 0, 127}));
  connect(speedSensor.v, speedLimitHigh.u) annotation (
    Line(points = {{41, 30}, {50, 30}, {50, 40}, {58, 40}}, color = {0, 0, 127}));
  connect(positionSensor.s, posLimitLow.u) annotation (
    Line(points = {{41, 50}, {50, 50}, {50, 60}, {58, 60}}, color = {0, 0, 127}));
  connect(positionSensor.s, posLimitHigh.u) annotation (
    Line(points = {{41, 50}, {50, 50}, {50, 80}, {58, 80}}, color = {0, 0, 127}));
  connect(prismatic.support, flange_b) annotation (
    Line(points = {{6, -34}, {-50, -34}, {-50, 100}}, color = {0, 127, 0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {
        Rectangle(
          lineColor = {0, 0, 255},
          fillColor = {39, 150, 249},
          pattern = LinePattern.None,
          fillPattern = FillPattern.Solid,
          extent = {{-100, -50}, {-30, 41}}),
        Rectangle(
          lineColor = {0, 0, 255},
          pattern = LinePattern.None,
          fillPattern = FillPattern.Solid,
          extent = {{-100, 40}, {-30, 50}}),
        Rectangle(
          lineColor = {0, 0, 255},
          fillColor = {39, 150, 249},
          pattern = LinePattern.None,
          fillPattern = FillPattern.Solid,
          extent = {{-30, -30}, {100, 20}}),
        Rectangle(
          lineColor = {0, 0, 255},
          pattern = LinePattern.None,
          fillPattern = FillPattern.Solid,
          extent = {{-30, 20}, {100, 30}}),
        Line(points = {{-30, -50}, {-30, 50}}),
        Line(points = {{100, -30}, {100, 21}}),
        Text(
          extent = {{-150, -135}, {150, -95}},
          textString = "%name",
          textColor = {0, 0, 255}),
        Text(
    extent = {{-150, -100}, {150, -70}},
    textString = "n=%jointParams.axis.xyz"),
        Text(
          origin = {0, -10},
          textColor = {0, 127, 0},
          extent = {{-60, 100}, {60, 40}},
          textString = "%flangeIndex",
          visible = flangeIndex > 0)}), preferredView = "diagram");
end Prismatic;
