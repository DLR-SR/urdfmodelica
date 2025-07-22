within URDFModelica_Tutorial.Records;
record Link "Parameters of a rigid body robot link"
  extends Modelica.Icons.Record;

  parameter Boolean hasVisual = false;
  parameter Boolean hasCollision = false;

  parameter String name = "defaultLinkName";
  parameter Inertial inertial;
  parameter Visual visual;
  parameter Collision collision;

  annotation (preferredView = "text", Documentation(info="<html>
<p>All information from the <a href=\"http://wiki.ros.org/urdf/XML/link\">ROS-Website</a>.</p>
</html>"));
end Link;
