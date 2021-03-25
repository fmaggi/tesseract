cd ./training/ground-truth

for file in *.tif; do
  echo $file
  base=`basename $file .tif`
  tesseract $file $base wordstrbox

  feh $file
  cat $base.box
  echo "Hay que editar? [y/n]"
  read var
  if [ "$var" = y ]
  then
    echo "editing"
    vim $base.box
  fi
done
