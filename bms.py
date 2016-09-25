# Modified by EricHu


import numpy as np
import os


def BMS(input_dir, output_dir, fastOrAccu=1):
    # A Python wrapper for excuting BMS.exe. Make sure to copy the compiled
    # executable file in the same directory of this wrapper. Moreover,OpenCV
    # library should be in the system's path.


    if input_dir[-1] != '/':
        input_dir = input_dir + '/'

    if output_dir[-1] != '/':
        output_dir = output_dir + '/'

    if not os.path.isdir(output_dir):
        os.mkdir(output_dir)


    # Tweek the following parameters for trade-off between speed and accuracy
    # See our paper for details.
    # For example, the following configuration gives a 4X speed-up
    if fastOrAccu == 0:
        sample_step_size     =   24 # \delta
        max_dim              =   300 # maximum dimension of the image
    else:
        sample_step_size     =   8 # \delta
        max_dim              =   400 # maximum dimension of the image

    # do not change the following

    dilation_width_1     =   max(round(7*max_dim/400),1) # \omega
    dilation_width_2     =   max(round(9*max_dim/400),1) # \kappa
    blur_std             =   round(9*max_dim/400) # \sigma
    color_space          =   2 # RGB: 1; Lab: 2; LUV: 4
    whitening            =   1 # do color whitening


    command = 'BMS_CODE/BMS %s %s %d %d %d %f %d %d %d' %(input_dir,output_dir, \
        sample_step_size,dilation_width_1,dilation_width_2, \
        blur_std, color_space, whitening, max_dim)
    os.system(command)
