within URDFModelica_Tutorial.Functions;
function getChainLength "Returns number of joints between specified link and base"
  extends Modelica.Icons.Function;
  import Modelica.Math.Vectors.find;

  input Integer startLinkIdx;
  input Integer connectionMatrix[:, 2];
  output Integer chainLength;

protected
  Integer currentJoint;
  Integer currentLink = startLinkIdx;

algorithm
  while find(currentLink, connectionMatrix[:, 2]) <> 0 loop
    currentJoint := find(currentLink, connectionMatrix[:, 2]);
    currentLink := connectionMatrix[currentJoint, 1];
    chainLength := chainLength + 1;
  end while;
  annotation (preferredView = "text");
end getChainLength;
