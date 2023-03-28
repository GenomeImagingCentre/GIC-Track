# GIC-Track
This dashboard is designed for the spatial and temporal analysis of fluorescently tagged transcription factors within cell nuclei.

# Installation Guide
1. Download Python from https://www.python.org/ftp/python/3.10.5/python-3.10.5-amd64.exe.
2. Run the Python installer file. Make sure to tick the “Add Python 3.10 to PATH” as shown in figure below before selecting “Install Now”. 
<p align="center">
  <img src="Images/PythonAddToPath.png" width="350" title="Reminder about adding Python to PATH.">
</p>
3. Once finished, run the “Requirements.bat” attached to install the required Python libraries.

# Requirement
This dashboard requires MATLAB with Statictics and Curve Fitting toolbox installed.

# Dashboard Usage
The dashboard would classify the files uploaded based on the naming convention; with the string/text before the first "_" being used as condition type to group the file/cell data.
Below are some example of the file name convention for comparing between 2 conditions of 3 files each: <br>
Condition-1_Cell_1.tiff <br>
Condition-1_Cell_2.tiff <br>
Condition-1_Cell_3.tiff <br>
Condition-2_Cell_1.tiff <br>
Condition-2_Cell_2.tiff <br>
Condition-2_Cell_3.tiff <br>

# Data Table Format
## FileList
| Parameter | Type | Description |
| --- | --- | --- |
| filename | TEXT | The filename that contribute to the dataset. |
| mutation | TEXT | The condition of the file/cell data, created based on file naming convention. |
| acquisition_rate | TEXT | "fast" or "slow", used to differentiate the data acquisition rate to prevent mixing of data types. |
| exposure_time | REAL| Exposure time in ms. |
| pixelSize | REAL | Pixel size of the data (in &mu;m). |
| cellSize | REAL | The size of the cell/nucleus based on segmented data (in pixels). |
| psfScale | REAL | Point spread function value of the microscope (user input in dashboard). |
| wvlngth | REAL | The wavelength of the emission used by the microscope (user input in dashboard). |
| iNA | REAL | - |
| psfStd | REAL | - |
| wn | REAL | - |
| errorRate | REAL | - |
| dfltnLoops | REAL | - |
| minInt | REAL | - |
| maxOptimIter | REAL | - |
| termTol | REAL | - |
| isRadiusTol | INTEGER | Is radius tolerance feature used for the tracking algorithm (user input in dashboard). |
| radiusTol | REAL | - |
| posTol | REAL | - |
| optim_termTol | REAL | - |
| optim_radTol | REAL | - |
| optim_radTol | REAL | - |
| optim_posTol | REAL | - |
| isThreshLocPrec | INTEGER | Is radius tolerance feature used for the tracking algorithm (user input in dashboard). |
| minLoc | REAL | - |
| maxLoc | REAL | - |
| isThreshSNR | INTEGER | Is signal-to-noise threshold feature used for the tracking algorithm (user input in dashboard). |
| minSNR | REAL | - |
| maxSNR | REAL | - |
| isThreshDensity | INTEGER | Is density threshold feature used for the tracking algorithm (user input in dashboard). |
| trackStart | REAL | - |
| trackEnd | REAL | - |
| Dmax | REAL | The maximum expected diffusion coefficient (in &mu;m<sup>2</sup>/s) of the uploaded file (user input in dashboard). |
| searchExpFac | REAL | - |
| statWin | REAL | - |
| maxComp | REAL | - |
| maxOffTime | REAL | - |
| intLawWeight | REAL | - |
| diffLawWeight | REAL | - |
| bleach_rate | REAL | - |
| traj_length | INTEGER | **Quality Control:** The minimum number of tracks in a trajectory (trajectories with fewer number than this will be discarded). |
| min_traj | INTEGER | **Quality Control:** The minimum number of trajectories in a file (files with fewer trajectories than this number will be discarded). |
| clip_factor | INTEGER | The number/percentage (depending on "Analysis Type:" selected in the dashboard) of a trajectories (from when it first being formed) to be used in the "mean square displacement" analysis.|
| tol | INTEGER | - |
| twoParN | REAL | The number of tracks that are used in two parameters fitting (used for jump distance plots in the dashboard). |
| twoPardN | REAL | The number of tracks variation that are used in two parameters fitting (used for jump distance plots in the dashboard). |
| twoParD1 | REAL | The "immobile" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from two parameters fitting model (used for jump distance plots in the dashboard). |
| twoPardD1 | REAL | The variation of "immobile" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from two parameters fitting model (used for jump distance plots in the dashboard). |
| twoParD2 | REAL | The variation of "mobile" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from two parameters fitting model (used for jump distance plots in the dashboard). |
| twoPardD2 | REAL | The variation of "mobile" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from two parameters fitting model (used for jump distance plots in the dashboard). |
| twoParf1 | REAL | The fraction of "immobile" tracks computed from two parameters fitting model (used for jump distance plots in the dashboard). |
| twoPardf1 | REAL | The variation of fraction of "immobile" tracks computed from two parameters fitting model (used for jump distance plots in the dashboard). |
| twoParSSR | REAL | The "sum of squares due to regression" of the two parameters fitting model (used for jump distance plots in the dashboard).  |
| threeParN | REAL | The number of tracks that are used in three parameters fitting (used for jump distance plots in the dashboard). |
| threePardN | REAL | The number of tracks variation that are used in three parameters fitting (used for jump distance plots in the dashboard). |
| threeParD1 | REAL | The "immobile" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threePardD1 | REAL | The variation of "immobile" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threeParD2 | REAL | The variation of "mixed" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threePardD2 | REAL | The variation of "mixed" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threeParD3 | REAL | The variation of "mobile" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threePardD3 | REAL | The variation of "mobile" diffusion coefficient (in &mu;m<sup>2</sup>/s) computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threeParf1 | REAL | The fraction of "immobile" tracks computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threePardf1 | REAL | The variation of fraction of "immobile" tracks computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threeParf2 | REAL | The fraction of "mixed" tracks computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threePardf2 | REAL | The variation of fraction of "mixed" tracks computed from three parameters fitting model (used for jump distance plots in the dashboard). |
| threeParSSR | REAL | The "sum of squares due to regression" of the three parameters fitting model (used for jump distance plots in the dashboard). |

SSR is computed as follows: <br>
$$\sum_{i=1}^n \left( \hat{y}_{i}-\bar{y})^{2} \right)$$
## TrajectoryList
| Parameter | Type | Description |
| --- | --- | --- |
| filename | TEXT | The filename that contribute to the dataset. |
| trajID | TEXT | The ID used to identify this trajectory. |
| traj_length | INTEGER | The total number of frames this trajectory existed. |
| msd | REAL | The average value of all the tracks' "mean square displacement" in the trajectory. |
| D | REAL | The diffusion coefficient of the trajectory (in Log<sub>10</sub>(&mu;m<sup>2</sup>)). |
| startTime | REAL | The time stamp the trajectory first appear. |
| endTime | REAL | The time stamp the trajectory is last seen. |
| meanX | REAL | The mean X-coordinate of the trajectory. |
| meanY | REAL | The mean Y-coordinate of the trajectory. |
| maxDistance | REAL | The maximum distance a track (that's belong to this trajectory) travelled. |
| meanDistance | REAL | The mean distance a track (that's belong to this trajectory) travelled. |
| medianDistance | REAL | The median distance a track (that's belong to this trajectory) travelled. |

## TrackList
| Parameter | Type | Description |
| --- | --- | --- |
| trajID | TEXT | The ID used to identify this trajectory. |
| Frame | REAL | The time the track is being observed (computed from the frame number it's being detected in and "exposure time"). |
| x | REAL | The X-coordinate of the track at "Frame". |
| y | REAL | The Y-coordinate of the track at "Frame". |
| msd | REAL | The "mean square displacement" of the track with respect to its previous position (in the previous "Frame"). |
| distance | REAL | The distance this track moved with respect to its previous position (in the previous "Frame"). |
| angle | REAL | The angle between the track at "Frame" with respect to its two previous position. |

The angle is calculated by its “diversion” from the previous track (how many degree it branched from previous movement [refer to the Figure below, where the track was moving from “1” to “2” in the first frame and “diverted” to “3” at second frame with the angle theta calculated as shown in the Figure]).
Note that the angle diversion do not account for whether it's clockwise or anti-clockwise diversion.
<p align="center">
  <img src="Images/AngleExample.png" width="350" title="Illustrative example of how angles are computed.">
</p>

## AngleList
| Parameter | Type | Description |
| --- | --- | --- |
| filename | TEXT | The filename that contribute to the dataset. |
| trajID | TEXT | The ID used to identify this trajectory. |
| A1 | INTEGER | Number of angles with tracks between 0 - 10° in this trajectory. |
| A2 | INTEGER | Number of angles with tracks between 10 - 20° in this trajectory. |
| A3 | INTEGER | Number of angles with tracks between 20 - 30° in this trajectory. |
| A4 | INTEGER | Number of angles with tracks between 30 - 40° in this trajectory. |
| A5 | INTEGER | Number of angles with tracks between 40 - 50° in this trajectory. |
| A6 | INTEGER | Number of angles with tracks between 50 - 60° in this trajectory. |
| A7 | INTEGER | Number of angles with tracks between 60 - 70° in this trajectory. |
| A8 | INTEGER | Number of angles with tracks between 70 - 80° in this trajectory. |
| A9 | INTEGER | Number of angles with tracks between 80 - 90° in this trajectory. |
| A10 | INTEGER | Number of angles with tracks between 90 - 100° in this trajectory. |
| A11 | INTEGER | Number of angles with tracks between 100 - 110° in this trajectory. |
| A12 | INTEGER | Number of angles with tracks between 110 - 120° in this trajectory. |
| A13 | INTEGER | Number of angles with tracks between 120 - 130° in this trajectory. |
| A14 | INTEGER | Number of angles with tracks between 130 - 140° in this trajectory. |
| A15 | INTEGER | Number of angles with tracks between 140 - 150° in this trajectory. |
| A16 | INTEGER | Number of angles with tracks between 150 - 160° in this trajectory. |
| A17 | INTEGER | Number of angles with tracks between 160 - 170° in this trajectory. |
| A18 | INTEGER | Number of angles with tracks between 170 - 180° in this trajectory. |

## JDList
| Parameter | Type | Description |
| --- | --- | --- |
| filename | TEXT | The filename that contribute to the dataset. |
| jump_distance | REAL | The jump distance tick (used for jump distance plots in the dashboard). |
| sharedFrequency | REAL | The number of tracks that fall within the "jump_distance" tick (used for jump distance plots in the dashboard). |
| twoParFrequency | REAL | The number of tracks that fall within the "jump_distance" tick based on two parameters fitting (used for jump distance plots in the dashboard). |
| threeParFrequency | REAL | The number of tracks that fall within the "jump_distance" tick based on three parameters fitting (used for jump distance plots in the dashboard). |
| twoParD1Values | REAL | The number of tracks that are "immobile" fall within the "jump_distance" tick based on two parameters fitting (used for jump distance plots in the dashboard). |
| twoParD2Values | REAL | The number of tracks that are "mobile" fall within the "jump_distance" tick based on two parameters fitting (used for jump distance plots in the dashboard). |
| threeParD1Values | REAL | The number of tracks that are "immobile" fall within the "jump_distance" tick based on three parameters fitting (used for jump distance plots in the dashboard). |
| threeParD2Values | REAL | The number of tracks that are "mixed" fall within the "jump_distance" tick based on three parameters fitting (used for jump distance plots in the dashboard). |
| threeParD3Values | REAL | The number of tracks that are "immobile" fall within the "jump_distance" tick based on three parameters fitting (used for jump distance plots in the dashboard). |

# Reference
Previously published algorithms, analysis, and scripts that are utilized in the dashboard can be found below: <br>

## Localization and Tracking:
D. M. McSwiggen et al. (2019) Evidence for DNA-mediated nuclear compartmentalization distinct from phase separation. eLife. 8:e47098. <br>
A. Sergé et al. (2008) Dynamic multiple-target tracing to probe spatiotemporal cartography of cell membranes. Nature methods, 5(8):687. <br>

## MSD-Based Diffusion Plot
J. Chen et al. (2014) Single-molecule dynamics of enhanceosome assembly in embryonic stem cells. Cell. 156(6):1274 - 1285. <br>

## Jump Distance Plot:
D. Mazza et al. (2013) Monitoring dynamic binding of chromatin proteins in vivo by single-molecule tracking. Methods Mol Biol. 1042:117-37. <br>

## Angle Plots:
I. Izeddin et. al. (2014), Single-molecule tracking in live cells reveals distinct target-search strategies of transcription factors in the nucleus. eLife. 3:e02230. <br>

## Heat Map:
J. O. Andrews et al. (2018) qSR: a quantitative super-resolution analysis tool reveals the cell-cycle dependent organization of RNA Polymerase I in live human cells. Sci Rep. 7424 (2018). <br>

## Dwell Time:
A.J. McCann et al. (2021) A dominant-negative SOX18 mutant disrupts multiple regulatory layers essential to transcription factor activity. Nucleic Acids Res. 49(19):10931-10955. Developed by Zhe Liu in Janelia Research Campus.
