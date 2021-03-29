export TESSDATA_PREFIX=~/trainig_data/training/tesseract/tessdata

echo "-----------BEFORE TRAINING--------------"

training/tesseract/lstmeval --model ./training/tesseract/tessdata/best/spa.traineddata \
  --eval_listfile ./eval-lstmf
echo "----------------------------------------"
echo "     "

echo "-----------AFTER TRAINING---------------"

training/tesseract/lstmeval --model ./spaoutput/mymodel_checkpoint \
  --traineddata ./training/tesseract/tessdata/best/spa.traineddata \
  --eval_listfile ./eval-lstmf
