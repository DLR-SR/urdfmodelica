within URDFModelica_Tutorial.Records;
record Collision "Collision properties of a link"
  extends Modelica.Icons.Record;
  parameter String name = "defaultCollisionName";
  parameter Origin origin;
  parameter Geometry geometry;
  annotation (preferredView = "text");
end Collision;
