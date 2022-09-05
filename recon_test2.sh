#!/bin/sh

infolder=./new_test

for entry in $infolder/*
do
	echo $entry
	CUDA_VISIBLE_DEVICES=1
 python sr.py --file=$entry --layers=3 --filters=24 --min_filters=4 --filters_decay_gamma=1.2 --use_nin=False --reconstruct_layers=1 --self_ensemble=1 --batch_image_size=32 --pixel_shuffler_filters=1
done
