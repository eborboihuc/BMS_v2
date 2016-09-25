# BMS_v2
A simple python wrapper of [Exploiting Surroundedness for Saliency Detection: A Boolean Map Approach](http://cs-people.bu.edu/jmzhang/BMS/BMS.html). We use a version 2 of

# Usage
1. copy execute file `BMS` under `/BMS_CODE` to the same directory of `bms.py`.
2. Store all the image (i.e., jpg, jpeg, JPG, tif, png, bmp) under `rootPath`.

Then, simply run the following code:
```
import bms
bms.BMS(rootPath, targetPath, fastOrAccu)
```

# Time
I ran all det00000001.png images under `/src` with current configuration, and it only cost `average_time: 0.0236342` seconds(about 42.31 fps) on my computer.
