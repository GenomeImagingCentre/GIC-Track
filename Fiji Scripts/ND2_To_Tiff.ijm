// Created by Yew Yan Wong 16 November 2022
dir1 = getDirectory("Choose Source Directory ");
dir2 = getDirectory("Choose Destination Directory");
list = getFileList(dir1);
for (i=0; i<list.length; i++) {
  showProgress(i+1, list.length);
  s = "open=["+dir1+list[i]+"] autoscale rois_import=[ROI manager] split_channels view=Hyperstack stack_order=XYCZT";
  run("Bio-Formats Importer", s);
  // run("Z Project...", "projection=[Max Intensity]");
  // run("Z Project...", "projection=[Standard Deviation]");
  saveAs("TIFF", dir2+substring(list[i], 0, list[i].length - 4));
  close();
}
