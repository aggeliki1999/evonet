SOURCES =  evo_net_list.c creators.c events.c extract.c generation_fit.c generation_no_fit.c mathss.c maturity.c robustness.c  
OBJECTS = $(SOURCES:%.c=%.o)
TARGET = evonet



all: $(TARGET)

%.o: %.c
	gcc -Wall -pg -O3 -pedantic -g $< -c -o $@

$(TARGET): $(OBJECTS)
	gcc $(OBJECTS) -o $@ -lm -lgsl -lgslcblas -g -lpthread

clean:
	clear
#	rm -r 500selection1rr0.run.*
	#rm -r neutral.run.*
	rm  $(TARGET)
	rm  $(OBJECTS)
	rm -f *.txt
	
