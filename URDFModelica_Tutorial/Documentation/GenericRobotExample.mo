within URDFModelica_Tutorial.Documentation;
class GenericRobotExample
  extends Modelica.Icons.Information;
  annotation (
    DocumentationClass = true,
    preferredView = "info",
    Documentation(info = "<html>
<p>
Package <strong>URDFModelica/Examples</strong> contains
<strong>GenericRobot</strong>: an example simulation of a
<strong>U</strong>nified <strong>R</strong>obot
<strong>D</strong>escription <strong>F</strong>ormat <strong>URDF</strong>
<a href=\"https://wiki.ros.org/urdf/XML/robot\">https://wiki.ros.org/urdf/XML/robot</a> 
defined generic robot that shows how few lines of code 
are needed to simulate almost any kind of robot.
</p>
<p>
The Python script translates a URDF file to a single 
Modelica record saved where input <tt>-o</tt> points to. 
Use <tt>-g</tt> option if you only want the URDF to 
single Modelica record translation without the package 
generation approach explained elsewhere.
</p>
<p>
The record also contains two matrices. 
<ul>
<li><tt>connectionMatrix[numJoints,2]</tt> lists the 
connected parent and child link for every joint.</li>
<li><tt>moveableJoints[numAxes,2]</tt> has the joint 
number and moveable axis number for every joint 
that is not fixed.</li>
</ul>
The variable structure <strong>
Robot.Robot</strong> model assembles joints and links 
arrays of variable lengths to a robot model, see the 
robot documentation for further details. <strong>
GenericRobot</strong> adds a multibody world and inputs to 
this generic robot using the UR10e manipulator as example. 
Simply replace the <tt>robotData</tt> record selected by 
the generic robot to simulate any other robot, that's all.
</p>
<p>
<strong>GenericRobot_Visualization2</strong> is the same 
example using DLR Visualization 2 instead of the Standard 
Library multibody mechanics visualizers.
</p>
</html>"));
end GenericRobotExample;
