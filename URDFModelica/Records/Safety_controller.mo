within URDFModelica.Records;
record Safety_controller
  extends Modelica.Icons.Record;
  parameter Real soft_lower_limit = 0.0;
  parameter Real soft_upper_limit = 0.0;
  parameter Real k_position = 0.0;
  parameter Real k_velocity = 0.0;
  annotation (preferredView = "text");
end Safety_controller;
