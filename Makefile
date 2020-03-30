FILE=12_MeetupBgd_Vujinovic_Koturovic_Radojevic_Stefanovic

$(FILE).pdf:$(FILE).tex
	./make.sh $(FILE).tex

.PHONY: clean, cleanall
clean:
	\rm *.aux *.blg *.out *.bbl *.log *.toc *.pdf
