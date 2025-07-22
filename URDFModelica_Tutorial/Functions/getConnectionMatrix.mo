within URDFModelica_Tutorial.Functions;
function getConnectionMatrix
  extends Modelica.Icons.Function;
  input Records.Link link[:];
  input Records.Joint joint[:];
  output Integer connectionMatrix[size(joint, 1), 2];

protected
  constant Integer nLinks = size(link, 1);
  constant Integer nJoint = size(joint, 1);
  constant String linkNames[nLinks] = {link[iLink].name for iLink in 1:nLinks};

algorithm
  for iJoint loop
    connectionMatrix[iJoint, 1] := findStringIndex(joint[iJoint].parent.link, linkNames);
    connectionMatrix[iJoint, 2] := findStringIndex(joint[iJoint].child.link, linkNames);
  end for;
  annotation (preferredView = "text");
end getConnectionMatrix;
