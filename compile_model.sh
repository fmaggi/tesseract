export TESSDATA_PREFIX=~/trainig_data/training/tesseract/tessdata

training/tesseract/lstmtraining --stop_training \
  --continue_from ./spaoutput/mymodel_checkpoint \
  --traineddata /home/fran/trainig_data/training/tesseract/tessdata/best/spa.traineddata \
  --model_output .spaoutput/mymodel.traineddata

cp ./spaoutput/mymodel.traineddata training/tesseract/tessdata/
