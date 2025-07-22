within URDFModelica_Tutorial.Joints;
model Floating
  extends Modelica.Mechanics.MultiBody.Interfaces.PartialTwoFrames;
  replaceable parameter URDFModelica_Tutorial.Records.Joint jointParams
    constrainedby URDFModelica_Tutorial.Records.Joint annotation (Placement(transformation(extent = {{-100, 80}, {-80, 100}})), choicesAllMatching = true);
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(r = jointParams.origin.xyz, rotationType = Modelica.Mechanics.MultiBody.Types.RotationTypes.PlanarRotationSequence, sequence = {3, 2, 1}, angles = Modelica.Units.Conversions.to_deg({jointParams.origin.rpy[3], jointParams.origin.rpy[2], jointParams.origin.rpy[1]}), animation = false)  annotation (
    Placement(transformation(origin = {-70, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Joints.FreeMotion freeMotion(animation = false)  annotation (
    Placement(transformation(origin = {10, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(frame_a, fixedRotation.frame_a) annotation (
    Line(points = {{-100, 0}, {-80, 0}}));
  connect(fixedRotation.frame_b, freeMotion.frame_a) annotation (
    Line(points = {{-60, 0}, {0, 0}}, color = {95, 95, 95}));
  connect(freeMotion.frame_b, frame_b) annotation (
    Line(points = {{20, 0}, {100, 0}}, color = {95, 95, 95}));
  annotation(Icon(coordinateSystem(
        preserveAspectRatio = true,
        extent = {{-100, -100}, {100, 100}}), graphics = {
        Line(
          points = {{-86, 31}, {-74, 61}, {-49, 83}, {-17, 92}, {19, 88}, {40, 69}, {59, 48}},
          color = {160, 160, 164},
          thickness = 0.5,
          smooth = Smooth.Bezier),
        Polygon(
          points = {{90, 0}, {50, 20}, {50, -20}, {90, 0}},
          fillColor = {39, 150, 249},
          fillPattern = FillPattern.Solid),
        Polygon(
          points = {{69, 58}, {49, 40}, {77, 28}, {69, 58}},
          fillColor = {192, 192, 192},
          fillPattern = FillPattern.Solid),
        Rectangle(
          extent = {{-70, -5}, {-90, 5}},
          fillColor = {39, 150, 249},
          fillPattern = FillPattern.Solid),
        Rectangle(
          extent = {{50, -5}, {30, 5}},
          fillColor = {39, 150, 249},
          fillPattern = FillPattern.Solid),
        Rectangle(
          extent = {{11, -5}, {-9, 5}},
          fillColor = {39, 150, 249},
          fillPattern = FillPattern.Solid),
        Rectangle(
          extent = {{-30, -5}, {-50, 5}},
          fillColor = {39, 150, 249},
          fillPattern = FillPattern.Solid),
        Text(
          extent = {{150, -35}, {-150, -75}},
          textColor = {0, 0, 255},
          textString = "%name")}), preferredView = "diagram");
end Floating;
