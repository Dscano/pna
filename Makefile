SPEC=PNA
ROUGE_STYLE=github

all: ${SPEC}.pdf

${SPEC}.pdf: ${SPEC}.adoc
	time asciidoctor-pdf -v \
		-r asciidoctor-mathematical \
		-r asciidoctor-bibtex \
		-a pdf-fontsdir=resources/fonts \
		-a rouge-style=$(ROUGE_STYLE) $<

clean:
	/bin/rm -f ${SPEC}.pdf 

P4C=p4test
#P4C=p4test --Wdisable=uninitialized_out_param

check:
	echo "No pna example programs to compile yet"
