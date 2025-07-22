within URDFModelica.Records;
record Inertia "Inertia Matrix with URDF naming convention"
  extends Modelica.Icons.Record;
  parameter Modelica.Units.SI.Inertia ixx = 0.0;
  parameter Modelica.Units.SI.Inertia ixy = 0.0;
  parameter Modelica.Units.SI.Inertia ixz = 0.0;
  parameter Modelica.Units.SI.Inertia iyy = 0.0;
  parameter Modelica.Units.SI.Inertia iyz = 0.0;
  parameter Modelica.Units.SI.Inertia izz = 0.0;
  annotation (preferredView = "text");
end Inertia;
