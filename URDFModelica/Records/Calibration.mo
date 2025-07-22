within URDFModelica.Records;
record Calibration "Reference positions of the joint, used to calibrate the absolute position of the joint"
  extends Modelica.Icons.Record;
  parameter Real rising = 0.0 "When the joint moves in a positive direction, this reference position will trigger a rising edge";
  parameter Real falling = 0.0 "When the joint moves in a positive direction, this reference position will trigger a falling edge";
  annotation (preferredView = "text");
end Calibration;
