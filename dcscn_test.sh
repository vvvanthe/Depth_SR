#!/bin/sh

infolder=./new_test

for entry in $infolder/*
do
	echo $entry
	python sr.py --file=$entry --layers=7 --filters=32 --min_filters=8 --filters_decay_gamma=1.2 --nin_filters=24 --nin_filters2=8 --reconstruct_layers=1 --reconstruct_filters=32 --self_ensemble=1 --batch_image_size=32 --pixel_shuffler_filters=1
done
