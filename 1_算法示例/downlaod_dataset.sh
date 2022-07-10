#!/bin/bash

wget -L http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
tar -xvf VOCtrainval_11-May-2012.tar
mkdir data
mv VOCdevkit/VOC2012 data/
rm -rf VOCdevkit
rm -f VOCtrainval_11-May-2012.tar
