
./download_data.sh


cd training/tesseract/


./autogen.sh

./configure


make

sudo make install

sudo ldconfig


make training

sudo make training-install

export TESSDATA_PREFIX=(path/to/training/dir)/training/tesseract/tessdata



-------Esto no------

./create_box.sh
  editar como sea necesario los box

./merge_data.sh

--------------------


------Seguir aca-----

editar all-lstmf para que apunten a los archivos .lstmf

./train_basic_model.sh


en otra ventana

tail -f /spaoutput/basetrain.log
