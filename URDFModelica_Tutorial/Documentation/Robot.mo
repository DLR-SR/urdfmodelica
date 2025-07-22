within URDFModelica_Tutorial.Documentation;
class Robot
  extends Modelica.Icons.Information;

  annotation (DocumentationClass = true, preferredView = "info", Documentation(info = "<html>
<p>
Package <strong>URDFModelica/Robots</strong> contains
the prototypes for robots as specified by the
<strong>U</strong>nified <strong>R</strong>obot
<strong>D</strong>escription <strong>F</strong>ormat <strong>URDF</strong>
<a href=\"https://wiki.ros.org/urdf/XML/robot\">ROS Wiki</a>.
</p>
<p>
<strong>BaseURDF</strong> is the model that connects 
links and joints together to from the robot as 
defined by URDF. When a new robot package is created, 
one copy of BaseURDF is created and all links and 
joints added. The links are connected to the joints 
to form the kinematic chains. The first link is also 
connected to a <tt>frame_a</tt> on the left. All links 
that are leaves of kinematic chains are connected to a 
vector of <tt>frame_b</tt> on the right of the model. 
Additionally, rotational and translational flanges 
are propagated to the outside for every continuous, 
revolute and prismatic joint. In order to have the 
correct array sizes, integer parameters are 
automatically calculated. For easier reference, the 
flange number is also given as parameter to these 
joints and shown in the icons. Even so not used in this 
package, the number of collision links is calculated 
too. The icon depends on the presence or absence of 
the <tt>-s</tt> option on package creation. The diagram
size is automatically adjusted to show all elements.
This is the final model entirely relying on the URDF 
source description, the further two Modelica models 
are suggestions for usage.
</p>
<p>
<strong>RunURDF</strong> builds an environment around 
BaseURDF. There is a <tt>Modelica.Mechanics.MultiBody.World</tt>, 
and outside inputs for position and angle of joints. 
RunURDF is one possible model to compile as FMU and use 
to design robot controllers in the modeling and simulation 
software of your choice. A mobile robot (default) 
is connected to the Multibody World through a 
<tt>Modelica.Mechanics.MultiBody.Joints.FreeMotion</tt> with
<tt>r_rel_a(start = {0.0, 0.0, 1.0})</tt> and 
<tt>angles_start = {0.0, 0.0, 0.0}</tt>. The leaves of 
kinematic chains are connected to collisionPoints (see Links 
explanation) to prevent mobile robots (their kinematic 
chains in general end with wheels) from falling through the 
ground. A stationary robot (<tt>-s</tt>) connects the 
BaseURDF directly to the Multibody World. 
Option <tt>-v</tt> for the Python script selects the 
RunURDF_Visualization2 template model that disables the Standard 
Library Visualizers and includes the DLR Visualization 2 setup.
</p>
<p>
<strong>TestURDF</strong> is a model to quickly check 
that the package has been created correctly by 
providing some simple inputs to all needed signals.
</p>
<p>
The <strong>Robot</strong> model and parameter record 
is not used when creating a package with Python. Instead 
it is a generic robot model that is defined by a single 
parameter record. When calling the Python script, such 
a record is created and saved at the 
location specified by the <tt>-o</tt> option 
(default is robot name in current folder). It 
not only compiles the arrays of links and joints, it 
also contains two matrices. 
<tt>connectionMatrix[numJoints,2]</tt> lists the 
connected parent and child link for every joint. 
<tt>moveableJoints[numAxes,2]</tt> has the joint 
number and moveable axis number for every joint 
that is not fixed. As demonstrated in the 
<tt>Examples.GenericRobotModel.GenericRobot</tt> example, 
a complete robot can be simulated with only a few 
lines of code using arrays of variable length instead 
of variable structure models that are not allowed 
in Modelica. The advantage of few lines of code and easy 
switching between robots (replace the record, that's all) 
has the drawback, that all links and joints must be equal. 
The link array is declared replaceable such that you can 
easily replace it with Link_Visualization2 if you 
want to visualize the robot with DLR Visualization 2.
</p>
</html>"));
end Robot;
