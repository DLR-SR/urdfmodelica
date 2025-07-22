within URDFModelica_Tutorial.Records;
record Dynamics "Physical properties of the joint"
  extends Modelica.Icons.Record;
  parameter Real damping = 0.0 "physical damping value";
  parameter Real friction = 0.0 "physical static friction value";
  annotation (preferredView = "text");
end Dynamics;
