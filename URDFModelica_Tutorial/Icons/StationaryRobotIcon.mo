within URDFModelica_Tutorial.Icons;
model StationaryRobotIcon
  extends BaseIcon;
  annotation (preferredView = "info", Icon(graphics = {
      Line(
        points= {{-60, -100}, {-60, -60}},
        color = {77, 77, 77},
        smooth = Smooth.None,
        thickness = 1),
      Line(
        points = {{-78, -100}, {-42, -100}},
        color = {77, 77, 77},
        smooth = Smooth.None,
        thickness = 1),
      Ellipse(
        extent = {{-80, -20}, {-40, -60}},
        lineColor = {77, 77, 77},
        lineThickness = 1),
      Line(
        points = {{-46, -26}, {0, 20}},
        color = {77, 77, 77},
        smooth = Smooth.None,
        thickness = 1),
      Ellipse(
        extent = {{-4, 52}, {36, 12}},
        lineColor = {77, 77, 77},
        lineThickness = 1),
      Line(
        points = {{36, 32}, {78, 32}},
        color = {77, 77, 77},
        smooth = Smooth.None,
        thickness = 1),
      Line(
        points = {{100, 48}, {78, 48}, {78, 16}, {100, 16}},
        color = {77, 77, 77},
        smooth = Smooth.None,
        thickness = 1)}));
end StationaryRobotIcon;
