within URDFModelica.Records;
record Visual "Visual properties of a link"
  extends Modelica.Icons.Record;
  parameter String name = "defaultVisualName";
  parameter Origin origin;
  parameter Geometry geometry;
  parameter Material material;
  annotation (preferredView = "text");
end Visual;
