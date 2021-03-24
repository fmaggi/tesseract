
./download_data.sh

cd training/tesseract/

./autogen.sh
./configure

make
sudo make install
sudo ldconfig

make training
sudo make training-install

./create_basic_data.sh
./train_basic_model.sh


en otra ventana
tail -f /spaoutput/basetrain.log
