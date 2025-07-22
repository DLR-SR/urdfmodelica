within URDFModelica.Functions;
function findStringIndex
  extends Modelica.Icons.Function;
  input String searchString;
  input String[:] stringArray;
  output Integer index;

algorithm
  index := -1;
  for i in 1:size(stringArray, 1) loop
    if stringArray[i] == searchString then
      index := i;
      break;
    end if;
  end for;
  annotation (preferredView = "text");
end findStringIndex;
