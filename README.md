# Traditional Imagined Speech Paradigm
This paradigm is based on the work of [https://pubmed.ncbi.nlm.nih.gov/28745299/](Nguyen 2018). 

## How to run

0. Before Running
- Install OpenViBe Desginer.

1. Setting up the Paradigm.
- Open "TraditionalParadigm.xml" using OpenViBE Designer
- On the "Lua Stimulator" box, change "Lua Script" path to the corresponding path for "TP.lua" in your computer.
- On the "Display cue image" box, change paths to the ones corresponding to the images of "AVANZAR", "RETROCEDER", "DERECHA", "IZQUIERDA", and the black screen (1,2,3,4 and 5 respectively, on the "IMAGES" folder)
- Change the paths on the "GDF file writer" and the "CSV File Writer" to the folder you want to save the signals. 

2. Applying the Paradigm.
- Connect the chosen EEG to OpenViBE Acquisiton Server and start streaming the  signals. If you want to, ord yo do not have an EEG system, you can use the Generic Oscillator to simulate signals.
- The "Display cue image" window must be on a monitor's fullscreen to be viewed correctly. Note that the first trial is a black screen.


3. Adding Events and converting to EDF
- The events are added using a second code. Admittedly, they could have been added during signal registration, but that was not the case.
- Open "AddingEvents.xml" using OpenViBE Designer
- Change the "GDF file reader" path to the one of the file you want to add events to.
- Change the "EDF File Writer" and "GDF file writer" paths to the ones you want to save  your files into. 
- On the "Lua Stimulator" box, change "Lua Script" path to the corresponding path for "Events.lua" in your computer
- Run this program for every GDF file you wish to add events to.
