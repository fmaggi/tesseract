export TESSDATA_PREFIX=~/trainig_data/training/tesseract/tessdata

cd ./training/ground-truth

for file in *.tif; do
  base=`basename $file .tif`
  echo $base
  tesseract $file $base lstm.train
done

touch ../../all-lstmf
ls -1 *.lstmf | sort -R > ../../all-lstmf
