export TESSDATA_PREFIX=~/trainig_data/training/tesseract/tessdata

cd ./training/ground-truth

for file in *.tif; do
  echo $file
  base=`basename $file .tif`
  tesseract $file $base wordstrbox

  feh $file &
  vim $base.box
done
