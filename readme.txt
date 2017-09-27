The project is divided into 2 parts:
1. Performing the processing on the input image.
2. Comparing the processed image with the images in the dataset and 
   giving the output as the corresponding alphabet.


Installation Requirements:
1. Install Scilab 5.5.2 or above.
2. Install Scilab Image and Video Processing Toolbox using the ATOMS module.

Execution:
1. Firstly execute the handgesture.sce file.
	The output of this file includes:
	i)  Edge detected image
	ii) Dilated image
	iii)Eroded image

	These images get saved to the appropriate folder. 
	
2. Then execute the comp.sce file by passing the input as the output(iii) of the handgesture.sce
   file.
	The output of this file is:
	Displays the alphabet.