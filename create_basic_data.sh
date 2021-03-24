mkdir -p ./training/spatrain/
training/tesseract/src/training/tesstrain.sh --lang spa --fonts_dir /usr/share/fonts --linedata_only \
  --noextract_font_properties --langdata_dir training/langdata \
  --tessdata_dir training/tesseract/tessdata --output_dir ./training/spatrain --fontlist FreeMono

mkdir -p ./training/spaeval/
training/tesseract/src/training/tesstrain.sh --lang spa --fonts_dir /usr/share/fonts --linedata_only \
  --noextract_font_properties --langdata_dir training/langdata \
  --tessdata_dir training/tesseract/tessdata \
  --fontlist FreeMono --output_dir ./training/spaeval
