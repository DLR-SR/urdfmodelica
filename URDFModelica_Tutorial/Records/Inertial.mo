within URDFModelica_Tutorial.Records;
record Inertial "Inertial parameters of a robot link"
  extends Modelica.Icons.Record;
  parameter Origin origin;
  parameter Modelica.Units.SI.Mass mass = 0.0;
  parameter Inertia inertia;
  annotation (preferredView = "text");
end Inertial;
