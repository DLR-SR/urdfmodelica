within URDFModelica_Tutorial;
package Documentation
  extends Modelica.Icons.Information;

  annotation (DocumentationClass = true, preferredView = "info", Documentation(info = "<html>
<p>
<strong>URDFModelica</strong> is a library to convert
robot designs into multibody simulation models based on the
<strong>U</strong>nified <strong>R</strong>obot
<strong>D</strong>escription <strong>F</strong>ormat <strong>URDF</strong>, see
<a href=\"http://docs.ros.org/en/jazzy/Tutorials/Intermediate/URDF/URDF-Main.html\">
ROS 2 Documentation</a> and <a href=\"https://wiki.ros.org/urdf\">ROS Wiki</a>.
</p>
<p>
Many CAD software have functionalities to export their models as
URDF file, an XML file with known convention and markings, that
define properties of links and joints. A Python script in this
library's resources converts the URDF file to packages of Modelica
files: parameter records and models for links and joints, overall
models that connect the links and joints together.
</p>
<p>
An example mobile robot comes along the library
<a href=\"https://github.com/ros/urdf_tutorial/blob/ros2/urdf/07-physics.urdf\">
07-physics.urdf</a>.
</p>
<p>
<img src=\"modelica://URDFModelica_Tutorial/Resources/physics/PhysicsTest_Dymola_Visualization.png\"
alt=\"Physics URDF robot simulation visualization\"
width=256 height=144>
</p>
<p>
An example stationary robot comes along the Library
<a href=\"https://www.universal-robots.com/products/ur10e/\">
UR10e</a> and
<a href=\"https://github.com/Daniella1/urdf_files_dataset/blob/main/urdf_files/ros-industrial/xacro_generated/universal_robots/ur_description/urdf/ur10e.urdf\">
ur10e.urdf</a> Copyright Universal Robots 2025.
</p>
<p>
<img src=\"modelica://URDFModelica_Tutorial/Resources/ur10e/Ur10e_robotTest_OpenModelica_Animation.PNG\"
alt=\"UR10e URDF robot simulation visualization\"
width=256 height=144>
</p>
<p>
Visualization can be done in two ways, with visualizers 
from the Standard Library or using the
<a href=\"https://www.sr-scil.de/simulationsbibliotheken/kommerziell-verfuegbar/visualization/\">
DLR Visualization 2 library</a>, the free community 
edition suffices to run the examples. Which to use must be 
selected by the users on package creation.
</p>
</html>"));
end Documentation;
