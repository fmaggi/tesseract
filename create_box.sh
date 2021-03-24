cd ./training/ground-truth

for file in *.tif; do
  echo $file
  python3 ../../create_wordstrbox.py -i $file
done
