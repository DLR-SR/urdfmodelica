within URDFModelica.Types;
type JointType = enumeration(
    revolute,
    continuous,
    prismatic,
    fixedJoint,
    floating,
    planar)
  annotation (preferredView = "text");
