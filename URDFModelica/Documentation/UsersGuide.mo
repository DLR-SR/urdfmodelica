within URDFModelica.Documentation;
class UsersGuide
  extends Modelica.Icons.Information;

  annotation (DocumentationClass = true, preferredView = "info", Documentation(info = "<html>
<p>
This is a step by step guide of how to set up a simulation of
a robot described as URDF file. Please refer to the URDF export
function of CAD software for how to create the URDF (XML) file
and associated meshes. The
<a href=\"http://docs.ros.org/en/jazzy/Tutorials/Intermediate/URDF/Exporting-an-URDF-File.html\">
ROS 2 documentation export page</a>
may be of good advice.
</p>
<h4>Prerequisites</h4>
<p>
The library has been developed and tested on OpenModelica v1.24.0 
and Dymola 2024x, Visualizers from the DLR Visualization 2 library 
only work with Dymola. Similarly, the generic robot simulation from 
a single record only works with Dymola.
</p>
<p>
The Python code has been developed and tested with Python 3.12
from the official sources. The module 
<a href=\"https://github.com/ros/urdf_parser_py\">
urdf_parser_py</a> has been installed with pip.
</p>
<h4>User's guide</h4>
<p>
Given a valid URDF robot. You may need to change paths for
visual meshes. Note that not all file types are supported by 
visualization, <tt>.stl</tt> in ASCII mode has been 
successfully tested. Collision currently (first version of 
the library) are not simulated, only their geometry 
visualized on top of the visual robot model. This can be 
disabled through a Boolean parameter. Mobile robots 
additionally are not fixed to space but free to move, the 
leaves of their kinematic chains (in general wheels) are 
prevented from falling beneath the (x, y) plane at <tt>z=0</tt>.
Stationary robots are connected to the multibody World. 
It's best to save all files in the resources folder of the 
library. Note also that all names will be converted to title 
form (First letter upper case, the rest lower case) and 
should not contain \"-\" (minus) signs.
</p>
<p>
Open a terminal, cmd respectively, and navigate to the
folder with the URDF file. Run the Python script
<tt>python urdf_to_package.py</tt>
<ul>
<li><tt>-i</tt> URDF input file</li>
<li><tt>-o</tt> output file of translation from URDF to Modelica
record in one file (default is robot name in current folder), 
this is the file to use for the alternative explained 
further down</li>
<li><tt>-r</tt> root directory (where the Modelica package
structure begins)</li>
<li><tt>-p</tt> package the Modelica package where
the new package will be placed (e.g. <tt>URDFModelica/Examples
</tt>)</li>
<li><tt>-v</tt> use DLR Visualization 2 instead of Standard Library 
visualizers</li>
<li><tt>-s</tt> mark robot as stationary (i.e. 
rigidly connect it to the world origin)</li>
</ul>
A new package will be created there with subpackages
<ul>
<li>Links</li>
<li>Joints</li>
</ul>
that each contain one parameter record and one model for each
link, respectively joint. Three further files are
<ul>
<li><tt>Robotname</tt> where links and joints are inserted and
connected to each other and provided with outside connects. 
The only difference between mobile (no <tt>-s</tt> option) and
stationary (with <tt>-s</tt> option) is the icon. The interface 
has one Multibody frame_a on the left connected to the root 
link of the robot, a vector of Multibody frame_b to the right 
connected to all links that are leaves of the robot kinematic 
chains, and flanges of all rotational and translational joints 
at the top.</li>
<li><tt>RobotnameRun</tt> where the robot is given an
environment (Multibody World) and interface to the active
joints (translational and rotational position sources), this
can be a good model for FMU export. A mobile robot (no 
<tt>-s</tt> option) has a free motion between World and robot.
Further, the leaves of kinematic chains are 
connected to collisionPoints (see Links explanation) to prevent 
mobile robots (their kinematic chains in general end with 
wheels) from falling through the ground. This is done with 
elastoGaps from the Standard Library. A stationary robot 
(with <tt>-s</tt> option) is connected to the Multibody World. 
Option <tt>-v</tt> disables the Standard Library Visualizers 
and includes the DLR Visualization 2 setup.</li>
<li><tt>RobotnameTest</tt> sets some inputs for
<tt>RobotnameRun</tt> to quickly check that the package was
built correctly.</li>
</ul>
</p>
<p>
Mobile robot example: <tt>python ..\\urdf_to_package.py -i 
physics.urdf -o physics.mo -r C:\\Username\\ModelicaLibraries 
-p URDFModelica\\Examples</tt>
</p>
<p>
Stationary robot example: <tt>python ..\\urdf_to_package.py -i 
ur10e.urdf -r C:\\Username\\ModelicaLibraries 
-p URDFModelica\\Examples -s</tt>
</p>
<p>
Stationary robot example with DLR Visualization 2: 
<tt>python ..\\urdf_to_package.py -i 
ur10e.urdf -r C:\\Username\\ModelicaLibraries 
-p URDFModelica\\Examples -s -v</tt>
</p>
<p>
There is a last input argument to the Python script 
<tt>python urdf_to_package.py</tt>
<ul>
<li><tt>-u</tt> Instead of creating or overwriting the 
whole package, an existing package of links, joints and 
robot gets its parameter values updated. The model files 
are not changed, only the parameter records for links and 
joints are completely overwritten. For this to work, the 
robot package structure must already exist, otherwise an 
error message is returned and nothing changed. This option 
can be useful if you have altered a few link or joint models 
(e.g. introduce further effects such as joint flexibility) 
and in the meantime some URDF parameters changed (e.g. 
different mass and inertia of links). The update option then 
changes only the parameters and keeps your model changes.</li>
</ul>
</p>
<h4>Alternative: Simulation Based on URDF Robot Record</h4>
<p>
The Python script also outputs one file with all joint and link 
records along with connection matrices (option <tt>-o</tt>). 
This is used as record for a generic robot model as 
demonstrated in the example. A robot is a model with two arrays 
of variable length, joints and links, that are connected together 
but following a matrix to get the correct siblings. Similarly, 
for continuous, revolute and prismatic joints that must be 
actuated. For this the generic joint model that contains all 
joint types in one model must be used and it is not possible 
to modify individual robot parts.
<ul>
<li><tt>-g</tt> If you only want to translate the URDF input 
file to a Modelica record. Options <tt>-r</tt>, <tt>-p</tt>, 
<tt>-v</tt>, <tt>-s</tt> and <tt>-u</tt> have no effect.</li>
</ul>
</p>
</html>"));
end UsersGuide;
