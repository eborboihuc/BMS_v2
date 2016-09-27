# BMS_v2
A simple python wrapper of [Exploiting Surroundedness for Saliency Detection: A Boolean Map Approach](http://cs-people.bu.edu/jmzhang/BMS/BMS.html). We use their source code [version 2](http://cs-people.bu.edu/jmzhang/BMS/down_bms_v2.php?Down=BMS_v2.zip).

## Usage
1. copy execute file `BMS` under `/BMS_CODE` to the same directory of `bms.py`.
2. Store all the image <b>(i.e., jpg, jpeg, JPG, tif, png, bmp)</b> under `rootPath`.

Then, simply run the following code:
```
import bms
bms.BMS(rootPath, targetPath, fastOrAccu)
```

## Update

Now I add some mistake proof in source codes in order to prevent unknown system crashes.    
1. check if an image is readable. I've noticed that if one saves images in wrong extension will cause openCV exception error.    
2. show up message if the image is broken/not readable.    
3. count the number of images processed.    
    
Example:    
```
Python 2.7.6 (default, Jun 22 2015, 17:58:13)
[GCC 4.8.2] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import bms
>>> bms.BMS('badimg','out')
Could not open or find image 5924658195.png
>>> bms.BMS('img','out')
Average_time: 0.0229997 over 3 images.
```

## Time
I ran all three images under `/img` with current configuration, and it only cost `average_time: 0.0229997` seconds(about 43.48 fps) on my computer.

And more evaluation on time cost is TBA.


## Modify the configuration
If you want faster computation time, all you need to do is set `fastOrAccu` to 0.    
Even further, you can increase the `sample_step_size` or decrease the `max_dim`.    
Or ultimately, you can dig into their source code and compile your own version.    


## Citation
Jianming Zhang and Stan Sclaroff. "Exploiting Surroundedness for Saliency Detection: A Boolean Map Approach.'' IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI), 2015. [PDF](http://cs-people.bu.edu/jmzhang/BMS/BMS_PAMI_preprint.pdf)
