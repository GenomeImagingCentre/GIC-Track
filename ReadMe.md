# GIC-Track
This dashboard is designed for the spatial and temporal analysis of fluorescently tagged transcription factors within cell nuclei.

# Installation Guide
1. Download Python from https://www.python.org/ftp/python/3.10.5/python-3.10.5-amd64.exe.
2. Run the Python installer file. Make sure to tick the “Add Python 3.10 to PATH” as shown in figure below before selecting “Install Now”. 
<p align="center">
  <img src="Picture1.png" width="350" title="hover text">
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
FileList
| Parameter | Type | Description |
| --- | --- | --- |
| filename | TEXT | The filename that contribute to the dataset. |
| mutation | TEXT | The condition of the file/cell data, created based on file naming convention. |
| acquisition_rate | TEXT | "fast" or "slow", used to differentiate the data acquisition rate to prevent mixing of data types. |
| exposure_time | REAL| Exposure time in ms. |
| pixelSize | REAL | Pixel size of the data (in &mu;m/s). |
| cellSize | REAL | The size of the cell/nucleus based on segmented data (in pixels). |
| psfScale | REAL | - |
| wvlngth | REAL | - |
| iNA | REAL | - |
| psfStd | REAL | - |
| wn | REAL | - |
| errorRate | REAL | - |
| dfltnLoops | REAL | - |
| minInt | REAL | - |
| maxOptimIter | REAL | - |
| termTol | REAL | - |
| isRadiusTol | INTEGER | - |
| radiusTol | REAL | - |
| posTol | REAL | - |
| optim_termTol | REAL | - |
| optim_radTol | REAL | - |
| optim_radTol | REAL | - |
| optim_posTol | REAL | - |
| isThreshLocPrec | INTEGER | - |
| minLoc | REAL | - |
| maxLoc | REAL | - |
| isThreshSNR | INTEGER | - |
| minSNR | REAL | - |
| maxSNR | REAL | - |
| isThreshDensity | INTEGER | - |
| trackStart | REAL | - |
| trackEnd | REAL | - |
| Dmax | REAL | - |
| searchExpFac | REAL | - |
| statWin | REAL | - |
| maxComp | REAL | - |
| maxOffTime | REAL | - |
| intLawWeight | REAL | - |
| diffLawWeight | REAL | - |
| bleach_rate | REAL | - |
| traj_length | INTEGER | - |
| min_traj | INTEGER | - |
| clip_factor | INTEGER | - |
| tol | INTEGER | - |
| twoParN | REAL | - |
| twoPardN | REAL | - |
| twoParD1 | REAL | - |
| twoPardD1 | REAL | - |
| twoParD2 | REAL | - |
| twoPardD2 | REAL | - |
| twoParf1 | REAL | - |
| twoPardf1 | REAL | - |
| twoParSSR | REAL | - |
| twoParN | REAL | - |
| twoPardN | REAL | - |
| threeParD1 | REAL | - |
| threePardD1 | REAL | - |
| threeParD2 | REAL | - |
| threePardD2 | REAL | - |
| threeParD3 | REAL | - |
| threePardD3 | REAL | - |
| threeParf1 | REAL | - |
| threePardf1 | REAL | - |
| threeParf2 | REAL | - |
| threePardf2 | REAL | - |
| threeParSSR | REAL | - |
