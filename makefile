all:  build 
      doczip

build:  collegemain.o college.o course.o
	g++ -o myexe collegemain.o college.o course.o

collegemain.o: collegemain.cc
		g++ -c collegemain.cc

college.o: college.h college.cc
		g++ -c college.cc

course.o: course.h course.cc
		g++ -c course.cc


doc:
	doxygen -g newdoc.conf
	doxygen newdoc.conf  

myexe: a.out

doczip: 
	zip -r quiz.zip *.html

clean:
        -rm *.o
        -rm *.class
        -rm myexe

