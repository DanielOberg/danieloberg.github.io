#!/usr/bin/env bash
cd assets/img
magick mogrify -format webp -strip -resize 3072x1920\> -quality '75%'  *.jpeg
cd ../..