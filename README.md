# BMS_v2
A simple python wrapper of [Exploiting Surroundedness for Saliency Detection: A Boolean Map Approach](http://cs-people.bu.edu/jmzhang/BMS/BMS.html). We use their source code [version 2](http://cs-people.bu.edu/jmzhang/BMS/down_bms_v2.php?Down=BMS_v2.zip).

## Usage
1. copy execute file `BMS` under `/BMS_CODE` to the same directory of `bms.py`.
2. Store all the image (i.e., jpg, jpeg, JPG, tif, png, bmp) under `rootPath`.

Then, simply run the following code:
```
import bms
bms.BMS(rootPath, targetPath, fastOrAccu)
```

## Time
I ran all det00000001.png images under `/src` with current configuration, and it only cost `average_time: 0.0236342` seconds(about 42.31 fps) on my computer.


## Citation
Jianming Zhang and Stan Sclaroff. "Exploiting Surroundedness for Saliency Detection: A Boolean Map Approach.'' IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI), 2015. [PDF](http://cs-people.bu.edu/jmzhang/BMS/BMS_PAMI_preprint.pdf)
