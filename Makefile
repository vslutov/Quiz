SRC = tex
DEST = pdf

all :
	( \
		cd tex && \
		ls autumn/*/*.tex | xargs -n 1 pdflatex -interaction=batchmode  && \
		rm -f *.aux *.log *.out && \
		cd - && \
		mkdir -p $(DEST) && \
		mv $(SRC)/*.pdf $(DEST) \
	)

.PHONY : all clean

clean :
	rm -rf $(DEST)
