FLAGS = -Thtml --html-no-escapehtml --html-no-skiphtml
HEAD = <head><meta charset="utf-8"/><link rel="stylesheet" type = "text/css" href="./style.css"></head>

all: index.html spelling_reform.html

.SUFFIXES: .md .html

.md.html:
	echo '$(HEAD)' > $@
	cat $< | lowdown $(FLAGS) >> $@

clean:
	rm *.html