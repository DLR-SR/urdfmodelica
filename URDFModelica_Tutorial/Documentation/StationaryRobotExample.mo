within URDFModelica_Tutorial.Documentation;
class StationaryRobotExample
  extends Modelica.Icons.Information;

  annotation (DocumentationClass = true, preferredView = "info", Documentation(info = "<html>
<p>
Package <strong>URDFModelica/Examples</strong> contains
<strong>UR10e</strong>: an example simulation of a
<strong>U</strong>nified <strong>R</strong>obot
<strong>D</strong>escription <strong>F</strong>ormat <strong>URDF</strong>
<a href=\"https://wiki.ros.org/urdf/XML/robot\">https://wiki.ros.org/urdf/XML/robot</a> 
defined stationary robot that shows the functionalities 
of URDFModelica. The example URDF file is 
<a href=\"https://github.com/Daniella1/urdf_files_dataset/blob/main/urdf_files/ros-industrial/xacro_generated/universal_robots/ur_description/urdf/ur10e.urdf\">
https://github.com/Daniella1/urdf_files_dataset/blob/main/urdf_files/ros-industrial/xacro_generated/universal_robots/ur_description/urdf/ur10e.urdf</a> 
Copyright Universal Robots 2025
and the package was created using the Python command
<tt>python ..\\urdf_to_package.py -i ur10e.urdf
-r H:\\URDF_Tutorial -p URDFModelica\\Examples -s</tt>.
</p>
<p>
<img src=\"modelica://URDFModelica_Tutorial/Resources/ur10e/Ur10e_robotTest_OpenModelica_Animation.PNG\"
alt=\"UR10e URDF robot simulation visualization\"
width=256 height=144>
</p>
<p>
Subpackage <strong>URDFModelica/Examples/Ur10e_robot/Links</strong> 
has 11 link models and their 11 parameter records, 7
with collision and visualization. 
Paths are relative from the library and resources.
</p>
<p>
Subpackage <strong>URDFModelica/Examples/Ur10e_robot/Joints</strong> 
has 10 joint models and their 10 parameter records. 
Six are revolute (i.e. rotational with limits). 
The other four joints are fixed connection between two 
links.
</p>
<p>
<strong>URDFModelica/Examples/Ur10e_robot/Ur10e_robot</strong> 
is the model that connects the links and joints together. 
Seven rotational flange pairs and one translational 
flange pair are propagated, <tt>frame_a</tt> is 
connected to <tt>frame_a</tt> of <tt>Base_link</tt>.
</p>
<p>
<strong>URDFModelica/Examples/Ur10e_robot/Ur10e_robotRun</strong> 
adds a Multibody world and outside inputs for the 
rotational joints. These are converted to rotational positions. 
Other types of conversion are possible of course 
and will not be overwritten, if the Python script 
is called with the update option <tt>-u</tt> to
update the parameter values only. <strong>Ur10e_robotRun</strong> 
is a good candidate for FMU export. <strong>Ur10e_robot</strong> 
is rigidly connected to the Multibody World. The two leaves are 
not connected to anything.
</p>
<p>
<strong>URDFModelica/Examples/Ur10e_robot/Ur10e_robotTest</strong> 
is a quick test to check whether the robot was 
created correctly. It simply adds some 
inputs to Ur10e_robotRun.
</p>
<p>
Package <strong>URDFModelica/Examples_Visualization2</strong> 
contains the same example with DLR Visualization 2 visualizers.
</p>
</html>"));
end StationaryRobotExample;
