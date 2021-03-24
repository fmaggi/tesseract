#! /bin/bash

#script to download everything needed to train model
mkdir training
cd training

mkdir langdata
cd langdata
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/radical-stroke.txt
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/common.punc
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/font_properties
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/Latin.unicharset
wget https://raw.githubusercontent.com/tesseract-ocr/langdata_lstm/master/Latin.xheights
mkdir spa
cd spa
wget https://raw.githubusercontent.com/tesseract-ocr/langdata/master/spa/spa.training_text
wget https://raw.githubusercontent.com/tesseract-ocr/langdata/master/spa/spa.punc
wget https://raw.githubusercontent.com/tesseract-ocr/langdata/master/spa/spa.numbers
wget https://raw.githubusercontent.com/tesseract-ocr/langdata/master/spa/spa.wordlist

cd ../../
git clone --depth 1 https://github.com/tesseract-ocr/tesseract.git
cd tesseract/tessdata
wget https://github.com/tesseract-ocr/tessdata/raw/master/spa.traineddata
wget https://github.com/tesseract-ocr/tessdata/raw/master/eng.traineddata
wget https://github.com/tesseract-ocr/tessdata/raw/master/osd.traineddata
mkdir best
cd best
wget https://github.com/tesseract-ocr/tessdata_best/raw/master/spa.traineddata
