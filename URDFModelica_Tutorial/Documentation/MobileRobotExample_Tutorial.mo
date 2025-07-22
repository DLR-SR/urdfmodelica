within URDFModelica_Tutorial.Documentation;
class MobileRobotExample_Tutorial
  extends Modelica.Icons.Information;

  annotation (DocumentationClass = true, preferredView = "info", Documentation(info = "<html>
<p>
This is the step by step tutorial to create a mobile 
robot simulation with URDFModelica based on the 
<strong>U</strong>nified <strong>R</strong>obot
<strong>D</strong>escription <strong>F</strong>ormat <strong>URDF</strong>
<a href=\"https://wiki.ros.org/urdf/XML/robot\">https://wiki.ros.org/urdf/XML/robot</a> 
description and CAD files of the example given in 
<a href=\"https://github.com/ros/urdf_tutorial/blob/ros2/urdf/07-physics.urdf\">
https://github.com/ros/urdf_tutorial/blob/ros2/urdf/07-physics.urdf</a>. 
The steps are in general the same for a stationary robot, 
differences arise in how to construct the final simualtion 
model such that the robot is able to drive on the 
(x, y) plane at <tt>z=0</tt>. This last step however goes 
beyond the pure URDF to Modelica translation.
</p>
<p>
<img src=\"modelica://URDFModelica_Tutorial/Resources/physics/PhysicsTest_Dymola_Visualization.png\"
alt=\"Physics URDF robot simulation visualization\"
width=256 height=144>
</p>
<h4>Step 0: Material</h4>
<p>
No further Modelica libraries than the <strong>Standard 
Library</strong> is required. Optionally you can use the 
<a href=\"https://www.sr-scil.de/simulationsbibliotheken/kommerziell-verfuegbar/visualization/\">
DLR Visualization 2 library</a>, the free community 
edition suffices to run the tutorial.
</p>
<p>
Translation from URDF to Modelica syntax and package 
generation is done with <a href=\"https://www.python.org/\">
Python</a>. The additional module (pip install) 
<a href=\"https://github.com/ros/urdf_parser_py\">
urdf_parser_py</a> is required.
</p>
<p>
The URDF and CAD files for the tutorial are in the 
<strong>Resources/physics</strong> folder. The URDF 
file there has one difference from the official 
sources: file names to CAD meshes are changed such 
that Modelica can load them. The CAD files have been 
converted from <tt>.dae</tt> to <tt>.stl</tt>.
</p>
<h4>Step 1: URDF to Modelica</h4>
<p>
Goal of step 1 is to automatically create the 
complete package to simulate the mobile robot 
with links, joints and robot models along with 
their parameters in \"Examples\".
</p>
<p>
Package creation is done with Python, the script 
is <strong>Resources/urdf_to_modelica.py</strong>. 
It takes a URDF input file, and the location where 
to write the new package. Specifically options
<ul>
<li><tt>-i</tt> URDF input file</li>
<li><tt>-r</tt> root directory (where the Modelica package
structure begins)</li>
<li><tt>-p</tt> package the Modelica package where
the new package will be placed (e.g. 
<tt>URDFModelica_Tutorial/Examples</tt>)</li>
</ul>
Concrete for the tutorial: open an cmd and 
navigate to <strong>Resources/physics</strong> 
folder. Run <tt>python ..\\urdf_to_package.py 
-i physics.urdf -r C:path\\to\\URDFModelica_OpenSource 
-p URDFModelica_Tutorial\\Examples</tt>.
</p>
<p>
<em>Optionally DLR Visualization 2 can be used 
instead of Standard Library visualizers. For this, 
the Python script has the option</em>
<ul>
<li><tt>-v</tt> use DLR Visualization 2 instead of Standard Library 
visualizers</li>
</ul>
<em>Concrete for the tutorial: open an cmd and 
navigate to <strong>Resources/physics</strong> 
folder. Run </em><tt>python ..\\urdf_to_package.py 
-i physics.urdf -r C:path\\to\\URDFModelica_OpenSource 
-p URDFModelica_Tutorial\\Examples_Visualization2 -v</tt>.
</p>
<h4>Step 2: First test</h4>
<p>
Goal of step 2 is to make sure, that the package 
creation has been done correctly.
</p>
<p>
Reload URDFModelica_Tutorial. Run 
<tt>URDFModelica_Tutorial.Examples.Physics.PhysicsTest</tt> or
<tt>URDFModelica_Tutorial.Examples_Visualization2.Physics.PhysicsTest</tt> 
depending on whether you use DLR Visualization 2 or not. 
You should see something similar as the image above. 
It is known that the ground plane is not visible in 
OpenModelica. Because the URDFModelica models are meant 
to be very generic for any rover, the behavior of 
PhysicsTest may not be very sensible. Idea of this 
first test is to see that all joints correctly move 
from 0 m or rad to 1 m or rad in 25 s.
</p>
<h4>Step 3: Model improvements</h4>
<p>
Goal of step 3 is to improve the collision simulation 
for the wheels such that the robot can drive on the 
(x, y) plane at <tt>z=0</tt>.
</p>
<p>
The first test mobile robot does not fall through 
the ground but is not able to drive either. Model 
<strong>URDFModelica_Tutorial.Links.CollisionCylinder</strong> 
is one simple way to simulate wheels on a flat plane.
</p>
<p>
Open <tt>URDFModelica_Tutorial.Examples.Physics.Links.Right_front_wheel</tt>. 
Add one <tt>URDFModelica_Tutorial.Links.CollisionCylinder</tt>, rename it to 
\"wheel\" and connect its frame_a to collisionCylinder.frame_a. Open the 
wheel parameters (double click on icon), set \"radius\" to 
<tt>linkParams.collision.geometry.radius</tt> and set \"height\" to
<tt>linkParams.collision.geometry.length</tt>. Add one 
<tt>Modelica.Mechanics.MultiBody.Parts.Fixed</tt> and connect its 
frame_b to wheel.frame_b.
</p>
<p>
Do the same for 
<tt>URDFModelica_Tutorial.Examples.Physics.Links.Right_back_wheel</tt>, 
<tt>URDFModelica_Tutorial.Examples.Physics.Links.Left_front_wheel</tt> and 
<tt>URDFModelica_Tutorial.Examples.Physics.Links.Left_back_wheel</tt>.
</p>
<p>
Run 
<tt>URDFModelica_Tutorial.Examples.Physics.PhysicsTest</tt> or
<tt>URDFModelica_Tutorial.Examples_Visualization2.Physics.PhysicsTest</tt> 
depending on whether you use DLR Visualization 2 or not. 
You should see the same simulation as before but with a driving robot. 
The driving is subtle because the wheels are small and turn 
slowly from 0 rad to 1 rad over 25 s.
</p>
</html>"));
end MobileRobotExample_Tutorial;
