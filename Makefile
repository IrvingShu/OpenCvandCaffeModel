CFLAGS := -I/usr/local/include -I/usr/local/include/opencv -I/usr/local/include/opencv2 

LDFLAGS := -L/usr/local/lib -lopencv_core -lopencv_dnn -lopencv_imgproc -lopencv_highgui -lopencv_imgcodecs
CC=g++

dnn_face: caffe_googlenet.o
	$(CC) -o dnn_face caffe_googlenet.o $(LDFLAGS)

caffe_googlenet.o: caffe_googlenet.cpp
	$(CC) -c $(CFLAGS) caffe_googlenet.cpp

clean:
	rm -f ./*.o ./dnn_face

