within URDFModelica_Tutorial.Functions;
function getBaseLink "Returns index of base link"
  extends Modelica.Icons.Function;
  import Modelica.Math.Vectors.find;

  input Integer connectionMatrix[:, 2];
  output Integer baseIdx = 1;
protected
  Integer numLinks = max(connectionMatrix);
algorithm
  for iLink in 1:numLinks loop
    //base link doesn't appear as child in joint connections
    if find(iLink, connectionMatrix[:, 2]) == 0 then
      if find(iLink, connectionMatrix[:, 1]) <> 0 then
        baseIdx := iLink;
      end if;
    end if;
  end for;
  annotation (preferredView = "text");
end getBaseLink;
