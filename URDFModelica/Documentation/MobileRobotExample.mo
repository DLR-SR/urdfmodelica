within URDFModelica.Documentation;
class MobileRobotExample
  extends Modelica.Icons.Information;

  annotation (DocumentationClass = true, preferredView = "info", Documentation(info = "<html>
<p>
Package <strong>URDFModelica/Examples</strong> contains 
<strong>Physics</strong>: an example simulation of a
<strong>U</strong>nified <strong>R</strong>obot
<strong>D</strong>escription <strong>F</strong>ormat <strong>URDF</strong>
<a href=\"https://wiki.ros.org/urdf/XML/robot\">https://wiki.ros.org/urdf/XML/robot</a> 
defined mobile robot that shows the functionalities 
of URDFModelica. The example URDF file is 
<a href=\"https://github.com/ros/urdf_tutorial/blob/ros2/urdf/07-physics.urdf\">
https://github.com/ros/urdf_tutorial/blob/ros2/urdf/07-physics.urdf</a>
and the package was created using the Python command
<tt>python ..\\urdf_to_package.py -i physics.urdf
-o physics.mo -r H:\\URDF_Tutorial -p
URDFModelica\\Examples</tt>.
</p>
<p>
<img src=\"modelica://URDFModelica/Resources/physics/PhysicsTest_Dymola_Visualization.png\"
alt=\"Physics URDF robot simulation visualization\"
width=256 height=144>
</p>
<p>
Subpackage <strong>URDFModelica/Examples/Physics/Links</strong> 
has 16 link models and their 16 parameter records, all
with collision and visualization. Note that the four links 
<tt>Left_gripper</tt>, <tt>Left_tip</tt>, 
<tt>Right_gripper</tt> and <tt>Right_tip</tt> have 
their collision and visual information as CAD file. 
Paths are relative from the library and resources.
</p>
<p>
Subpackage <strong>URDFModelica/Examples/Physics/Joints</strong> 
has 15 joint models and their 15 parameter records. 
Seven joints are rotational, five continuous and two 
revolute (i.e. with limits). One joint is prismatic. 
The other seven joints are fixed connection between two 
links.
</p>
<p>
<strong>URDFModelica/Examples/Physics/Physics</strong> 
is the model that connects the links and joints together. 
Seven rotational flange pairs and one translational 
flange pair are propagated, <tt>frame_a</tt> is 
connected to <tt>frame_a</tt> of <tt>Base_link</tt>.
</p>
<p>
<strong>URDFModelica/Examples/Physics/PhysicsRun</strong> 
adds a Multibody world and outside inputs for the 
rotational and translational joints. These are 
converted to rotational and translational positions. 
Other types of conversion are possible of course 
and will not be overwritten, if the Python script 
is called with the update option <tt>-u</tt> to
update the parameter values only. <strong>PhysicsRun</strong> 
is a good candidate for FMU export. <strong>Physics</strong> 
is connected to the Multibody World through a 
<tt>Modelica.Mechanics.MultiBody.Joints.FreeMotion</tt> with
<tt>r_rel_a(start = {0.0, 0.0, 1.0})</tt> and 
<tt>angles_start = {0.0, 0.0, 0.0}</tt>. The seven leaves 
are connected to CollisionPoints such that the wheels (and 
also the other ends of kinematic chains) can't fall under 
the (x, y) plane at <tt>z=0</tt>.
</p>
<p>
<strong>URDFModelica/Examples/Physics/PhysicsTest</strong> 
is a quick test to check whether the robot was 
created correctly. It simply adds some 
inputs to PhysicsRun.
</p>
<p>
Package <strong>URDFModelica/Examples/Physics_Wheels</strong> 
is the same than <strong>Physics</strong> with an important 
difference in the four links that simulate wheels. A 
<strong>CollisionCylinder</strong> is attached to the 
collision visualization to properly simulate wheels driving 
on the (x, y) plane at <tt>z=0</tt>. This package was not 
created automatically. Instead, <strong>Physics</strong> was 
duplicated and the collision cylinders with counterparts 
added to the four links that have \"wheel\" in their name.
</p>
<p>
Package <strong>URDFModelica/Examples_Visualization2</strong> 
contains the same example with DLR Visualization 2 visualizers. 
Also the example with more realistic wheels collision 
simulation is contained.
</p>
</html>"));
end MobileRobotExample;
