within URDFModelica.Records;
record Mimic "Specifies that the joint mimics another joint"
  extends Modelica.Icons.Record;
  parameter String joint = "defaultJointName" "Joint to mimic";
  parameter Real multiplier = 1.0;
  parameter Real offset = 0.0;
  annotation (preferredView = "text", Documentation(info="<html>
<p>The value of this joint can be computed as</p>
<p><i>value = multiplier * other_joint_value + offset</i>.</p>
</html>"));
end Mimic;
