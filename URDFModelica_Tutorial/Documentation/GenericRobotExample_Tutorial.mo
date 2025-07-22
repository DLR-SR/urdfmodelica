within URDFModelica_Tutorial.Documentation;
class GenericRobotExample_Tutorial
  extends Modelica.Icons.Information;
  annotation (
    DocumentationClass = true,
    preferredView = "info",
    Documentation(info = "<html>
<p>
This is a step by step tutorial for how to create 
a generic simulation of any kind of robot based on its
<strong>U</strong>nified <strong>R</strong>obot
<strong>D</strong>escription <strong>F</strong>ormat <strong>URDF</strong>
<a href=\"https://wiki.ros.org/urdf/XML/robot\">https://wiki.ros.org/urdf/XML/robot</a>. 
Translation from URDF to Modelica is with the same 
Python script as for the other tutorials. 
Difference is that here the translation as one 
file is used instead of the translations split up 
in links and joints with copies from templates.
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
<strong>Resources/ur10e</strong> folder and in the 
<strong>Resources/physics</strong> folder. The URDF 
files there have one difference from the official 
sources: file names to CAD meshes are changed such 
that Modelica can load them. If needed, CAD files have 
been converted from <tt>.dae</tt> to <tt>.stl</tt>.
</p>
<h4>Step 1: URDF to Modelica</h4>
<p>
Goal of step 1 is to translate from URDF to Modelica.
</p>
<p>
Translation is done with Python, the script 
is <strong>Resources/urdf_to_modelica.py</strong>. 
This is the same script as for the other tutorials, 
the package created by the script will not be used, 
instead one Modelica record file that compiles the 
complete translation. The script takes a URDF input 
file, and the location where to write the new record. 
Specifically options
<ul>
<li><tt>-i</tt> URDF input file</li>
<li><tt>-o</tt> output file of translation from URDF to Modelica
record in one file (default is robot name in current folder)</li>
<li><tt>-g</tt> skip the package creation</li>
</ul>
Concrete for the tutorial: open an cmd and 
navigate to <strong>Resources/ur10e</strong> 
folder. Run <tt>python ..\\urdf_to_package.py 
-i ur10e.urdf -o ur10e.mo -g</tt>. 
The mobile robot tutorial command in folder 
<strong>Resources/physics</strong> is
<tt>python ..\\urdf_to_package.py 
-i physics.urdf -o physics.mo -g</tt>.
</p>
<h4>Step 2: Add new record to Modelica</h4>
<p>
Goal of step 2 is to add the new record to 
the Modelica package browser.
</p>
<p>
Open the file of option <tt>-o</tt> above in 
your favorite text editor. Go to package
<tt>URDFModelica_Tutorial.Examples.GenericRobotModel.RobotRecords</tt> 
and right click \"New\", \"Record\" to create 
a new Modelica record in this package 
with the same name as option <tt>-o</tt> above. 
Copy the complete contents from your favorite 
text editor to this new Modelica record. Do 
this for as many new records as you want, both 
mobile and stationary tutorial robot are possible.
</p>
<h4>Step 3: First test</h4>
<p>
Goal of step 3 is to run the generic robot simulation.
</p>
<p>
In <tt>URDFModelica_Tutorial.Examples.GenericRobotModel.GenericRobot</tt> 
change the class of <tt>robotData</tt> to any of the 
new records added in step 2, you may rename this 
element or not as you wish. Run <tt>GenericRobot</tt>.
You should see a robot fixed in space without visible 
environment. All it's joints go from 0 to 1, unit 
agnostic, over 25 s.
</p>
<p>
<em>Optionally DLR Visualization 2 can be used 
instead of Standard Library visualizers. For this, run 
<tt>URDFModelica_Tutorial.Examples.GenericRobotModel.GenericRobot_Visualization2</tt>. 
You don't need to change anything in this model.</em>
</p>
</html>"));
end GenericRobotExample_Tutorial;
