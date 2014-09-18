lecture.html: lecture.Rmd
	./render.R lecture.Rmd

.PNONY: clean
clean:
	rm -f lecture.html
