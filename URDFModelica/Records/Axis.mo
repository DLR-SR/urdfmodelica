within URDFModelica.Records;
record Axis "Joint axis specified in the joint frame"
  extends Modelica.Icons.Record;
  parameter Modelica.Units.SI.Length xyz[3] = {1.0, 0.0, 0.0};
  annotation (preferredView = "text", Documentation(info="<html>
<p>This is the axis of rotation for revolute joints, the axis of translation for prismatic joints, and the surface normal for planar joints. The axis is specified in the joint frame of reference. Fixed and floating joints do not use the axis field. </p>
<p><br>The vector should be normalized. </p>
</html>"));
end Axis;
