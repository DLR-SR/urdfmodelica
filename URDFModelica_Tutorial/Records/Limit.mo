within URDFModelica_Tutorial.Records;
record Limit "Joint limits for revolute and prismatic joints"
  extends Modelica.Icons.Record;
  parameter Real lower = 0.0;
  parameter Real upper = 0.0;
  parameter Real effort = 0.0;
  parameter Real velocity = 0.0;
  annotation (preferredView = "text");
end Limit;
