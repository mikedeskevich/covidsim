md := $(filter-out README.md, $(wildcard *.md))

all: slides

slides: $(md:.md=.html)

pdf: $(md:.md=.pdf)

pptx: $(md:.md=.pptx)

%.html: %.md
	pandoc $< \
	-o $@ \
	--self-contained \
	--standalone \
	--section-divs \
	--highlight-style=breezedark \
	--katex=/repo/Presentations/katex/ \
	-s \
	-t revealjs \
	-V revealjs-url=/repo/Presentations/reveal.js \
	-V theme=black \
	-V center=false \
	-V width:1920 \
	-V height:1440 \
	-V margin:0 \
	-V slideNumber:\"c\" \

index: covidsim.md
	pandoc covidsim.md \
	-o index.html \
	--standalone \
	--section-divs \
	--highlight-style=breezedark \
	-s \
	-t revealjs \
	-V revealjs-url=https://revealjs.com \
	-V theme=black \
	-V center=false \
	-V width:1920 \
	-V height:1440 \
	-V margin:0 \
	-V slideNumber:\"c\" 

	#--katex=/repo/Presentations/katex/ \
	#-V revealjs-url=/repo/Presentations/reveal.js \

%.pdf: %.md
	pandoc $< \
	-o $<.tmp.html \
	--self-contained \
	--standalone \
	--section-divs \
	--katex=/repo/Presentations/katex/ \
	-s \
	-t revealjs \
	-V revealjs-url=/repo/Presentations/reveal.js \
	-V theme=white \
	-V center=false \
	-V width:1920 \
	-V height:1440 \
	-V slideNumber:\"c\" \
	-V transition=none; \
	/repo/Presentations/deck2pdf/bin/deck2pdf --profile=revealjs $<.tmp.html $@; \
	rm $<.tmp.html

%.pptx: %.pdf
	/repo/Presentations/pdf2pptx/pdf2pptx.sh $< ; \
	mv $<.pptx $@
