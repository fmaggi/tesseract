export TESSDATA_PREFIX=~/trainig_data/training/tesseract/tessdata

if ! [[ -d ./spaoutput/ ]]; then
  echo "Creating directory"
  mkdir -p ./spaoutput/

  cd ./spaoutput/
  combine_tessdata -e ../training/tesseract/tessdata/best/spa.traineddata \
   ./spa.lstm
  cd ../
fi

training/tesseract/lstmtraining --model_output ./spaoutput/mymodel \
  --continue_from ./spaoutput/spa.lstm \
  --traineddata /home/fran/trainig_data/training/tesseract/tessdata/best/spa.traineddata \
  --train_listfile ./train-lstmf \
  --max_iterations 2000 \
