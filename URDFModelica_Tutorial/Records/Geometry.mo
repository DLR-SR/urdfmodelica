within URDFModelica_Tutorial.Records;
record Geometry "Shape of visual object"
  extends Modelica.Icons.Record;
  parameter Types.GeometryType geometryType = Types.GeometryType.sphere;
  parameter Modelica.Units.SI.Length size[3] = {1.0, 1.0, 1.0};
  parameter Modelica.Units.SI.Radius radius = 1.0;
  parameter Modelica.Units.SI.Length length = 1.0;
  parameter String filename = "defaultMeshPath";
  parameter Real scale[3] = {1.0, 1.0, 1.0};
  annotation (preferredView = "text");
end Geometry;
