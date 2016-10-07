all: report.pdf eda-output.txt regression.RData

data:
	curl -o data/Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

clean: 
	rm -f report.pdf
	
regression.RData: code/regression-script.R data/Advertising.csv
	Rscript code/regression-script.R
	
eda-output.txt: code/eda-script.R data/Advertising.csv
	Rscript code/eda-script.R

report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	pandoc -s report/report.Rmd -o report/report.pdf
