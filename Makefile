FILE=MVJ_12_MeetupBgdVujinovicKoturovicRadojevicStefanovic

$(FILE).pdf:$(FILE).tex
	./make.sh $(FILE).tex

.PHONY: clean, cleanall
clean:
	\rm *.aux *.blg *.out *.bbl *.log *.toc *.pdf
