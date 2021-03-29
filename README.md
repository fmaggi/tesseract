Download:
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


Create data:
  mkdir training/ground-truth

  (Store .tif files in ground-truth folder)

  ./create_box.sh

  editar como sea necesario los box

  ./merge_data.sh

  python3 order_lstmfs.py

Train model:
  ./fine_tune_model.sh

  ./compile_model.sh
