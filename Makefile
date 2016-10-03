phony: all data clean

all: report.pdf eda-output.txt regression.RData

data: 

clean: rm -f report.pdf

report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	pandoc -s report/report.Rmd -o report/report.pdf
	
regression.RData: code/regression-script.R data/Advertising.csv
	pandoc -s code/regression-script.R -o data/regression.RData

eda-output.txt: code/eda-script.R data/Advertising.csv
	pandoc -s code/eda-script.R -o data/eda-output.txt
