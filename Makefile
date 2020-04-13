FILE=MVJ_12_Meetup_VujinovicKoturovicRadojevicStefanovic
#FILE=MVJ_12_Odgovor_Meetup_VujinovicKoturovicRadojevicStefanovic

$(FILE).pdf:$(FILE).tex
	./make.sh $(FILE).tex

.PHONY: clean, cleanall
clean:
	\rm *.aux *.blg *.out *.bbl *.log *.toc *.pdf
