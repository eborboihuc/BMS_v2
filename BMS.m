%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	Implemetation of the saliency detction method described in paper
%	"Exploit Surroundedness for Saliency Detection: A Boolean Map Approach", 
%   Jianming Zhang, Stan Sclaroff, submitted to PAMI, 2014
%	
%	Copyright (C) 2014 Jianming Zhang
%
%	This program is free software: you can redistribute it and/or modify
%	it under the terms of the GNU General Public License as published by
%	the Free Software Foundation, either version 3 of the License, or
%	(at your option) any later version.
%
%	This program is distributed in the hope that it will be useful,
%	but WITHOUT ANY WARRANTY; without even the implied warranty of
%	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%	GNU General Public License for more details.
%
%	You should have received a copy of the GNU General Public License
%	along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
%	If you have problems about this software, please contact: jmzhang@bu.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function BMS(input_dir, output_dir)
% A matlab wrapper for excuting BMS.exe. Make sure to copy the compiled
% executable file in the same directory of this wrapper. Moreover,OpenCV
% library should be in the system's path.


if input_dir(end) ~= '/' && input_dir(end) ~= '\'
    input_dir           =   [input_dir,'/'];
end

if output_dir(end) ~= '/' && output_dir(end) ~= '\'
    output_dir          =   [output_dir,'/'];
end

if ~exist(output_dir,'dir')
    mkdir(output_dir);
end

% Tweek the following parameters for trade-off between speed and accuracy
% See our paper for details.
% For example, the following configuration gives a 4X speed-up
% 
% sample_step_size     =   24; % \delta
% max_dim              =   300; % maximum dimension of the image

sample_step_size     =   8; % \delta
max_dim              =   400; % maximum dimension of the image

% do not change the following

dilation_width_1     =   max(round(7*max_dim/400),1); % \omega
dilation_width_2     =   max(round(9*max_dim/400),1); % \kappa
blur_std             =   round(9*max_dim/400); % \sigma
color_space          =   2; % RGB: 1; Lab: 2; LUV: 4
whitening            =   1; % do color whitening


command = sprintf('BMS_CODE/BMS %s %s %d %d %d %f %d %d %d',input_dir,output_dir,...
    sample_step_size,dilation_width_1,dilation_width_2,...
    blur_std, color_space, whitening, max_dim);
system(command);

end