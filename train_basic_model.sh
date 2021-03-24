export TESSDATA_PREFIX=/home/fran/training/tesseract/tessdata

if ! [[ -d ./spaoutput/ ]]; then
  echo "Creating directory"
  mkdir -p ./spaoutput/

  cd ./spaoutput/
  combine_tessdata -u ../training/tesseract/tessdata/best/spa.traineddata spa
  cd ../
else
  echo "Not creating"
fi

training/tesseract/lstmtraining --model_output ./spaoutput/ \
  --continue_from ./spaoutput/spa.lstm \
  --traineddata ./training/tesseract/tessdata/best/spa.traineddata \
  --train_listfile ./all-lstmf \
  --max_iterations 1200
