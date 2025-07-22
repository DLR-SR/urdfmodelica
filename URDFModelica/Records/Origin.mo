within URDFModelica.Records;
record Origin "Parameters of an origin"
  extends Modelica.Icons.Record;
  parameter Modelica.Units.SI.Length xyz[3] = {0.0, 0.0, 0.0};
  // To comply with URDF rpy convention, reverse URDF angle order and use dymola {3, 2, 1} angle convention
  parameter Modelica.Units.SI.Angle rpy[3] = {0.0, 0.0, 0.0} "Original URDF angles";
  annotation (preferredView = "text");
end Origin;
