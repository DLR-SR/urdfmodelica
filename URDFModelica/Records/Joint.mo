within URDFModelica.Records;
record Joint "Parameters of a robot joint"
  extends Modelica.Icons.Record;

  parameter Boolean hasCalibration = false;
  parameter Boolean hasDynamics = false;
  parameter Boolean hasLimit = false;
  parameter Boolean hasMimic = false;
  parameter Boolean hasSafety_controller = false;

  parameter String name = "defaultJointName";
  parameter Types.JointType jointType = Types.JointType.fixedJoint;
  parameter Origin origin;
  parameter Parent parent;
  parameter Child child;
  parameter Axis axis;
  parameter Calibration calibration;
  parameter Dynamics dynamics;
  parameter Limit limit;
  parameter Mimic mimic;
  parameter Safety_controller safety_controller;

  annotation (preferredView = "text", Documentation(info="<html>
<p>All information from the <a href=\"http://wiki.ros.org/urdf/XML/joint\">ROS-Website</a>.</p>
<p>Note that attribute <em>type</em> of urdf Joint is named <em>jointType</em> here, because <strong>type</strong> is a Modelica keyword.</p>
</html>"));
end Joint;
