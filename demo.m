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

BMS('src/','output/'); % for eye fixation prediction

%D = dir('src/*.bmp');
D = dir('src/*.jpg');
file_list = {D.name};
src = imread(fullfile('src/',file_list{1}));
sMap = imread(fullfile('output/',[file_list{1}(1:end-4),'.png']));

figure
subplot(1,2,1)
imshow(src)
title('Input Image')
subplot(1,2,2)
imshow(double(sMap)/max(double(sMap(:)))) % normalize for better visualization
title('Eye Fixation Prediction')
