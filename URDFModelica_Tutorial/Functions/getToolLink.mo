within URDFModelica_Tutorial.Functions;
function getToolLink "Returns index of tool link with longest kinematic chain"
  extends Modelica.Icons.Function;
  import Modelica.Math.Vectors.find;

  input Integer connectionMatrix[:, 2];
  output Integer toolIdx = 1;

protected
  Integer numLinks = max(connectionMatrix);

  Integer chainLength;
  Integer linkIdx;
  Integer jointIdx;
  Integer maxChainLength;

algorithm
  maxChainLength := 0;

  for iLink in 1:numLinks loop
    //tool link doesn't appear as parent in joint connections, because it's the end of a kinematic chain
    //URDF robots can have multiple tool links. Here the tool link with the longest kinematic chain is chosen
    if find(iLink, connectionMatrix[:, 1]) == 0 then
      // Analyze kinematic chain of tool link candidate
      chainLength := 0;
      linkIdx := iLink;
      jointIdx := find(linkIdx, connectionMatrix[:, 2]);
      while jointIdx <> 0 loop
        chainLength := chainLength + 1;

        // Search next element in kinematic chain from tool to base
        linkIdx := connectionMatrix[jointIdx, 1];
        jointIdx := find(linkIdx, connectionMatrix[:, 2]);

        // An alternative would be to only count moveable joints in chain length
      end while;

      if chainLength > maxChainLength then
        toolIdx := iLink;
        maxChainLength:=chainLength;
      end if;
    end if;
  end for;
  annotation (preferredView = "text");
end getToolLink;
