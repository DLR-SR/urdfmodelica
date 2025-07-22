within URDFModelica_Tutorial.Records;
record Material "Material of visual element"
  extends Modelica.Icons.Record;
  parameter String name = "defaultMaterialName";
  parameter Real rgba[4](
    each final unit = "1",
    each min = 0.0,
    each max = 1.0) = {0.5, 0.5, 0.5, 1.0} "color of a material specified by red/green/blue/alpha";
  parameter String texture = "defaultTextureFilename";
  annotation (preferredView = "text");
end Material;
