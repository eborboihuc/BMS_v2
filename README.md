# BMS_v2
A simple python wrapper of [Exploiting Surroundedness for Saliency Detection: A Boolean Map Approach](http://cs-people.bu.edu/jmzhang/BMS/BMS.html)


# Usage
1. copy execute file `BMS` under `/BMS_CODE` to the same directory of `bms.py`.
2. Store all the image (i.e., jpg, jpeg, JPG, tif, png, bmp) under `rootPath`.

Then, simply run the following code:
```
import bms
bms.BMS(rootPath, targetPath, fastOrAccu)
```
