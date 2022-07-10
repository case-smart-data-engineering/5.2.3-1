#!/bin/bash

wget -L http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
unzip VOCtrainval_11-May-2012.zip
mkdir data
mv VOCdevkit/VOC2012 data/
rm -f VOCtrainval_11-May-2012.zip
