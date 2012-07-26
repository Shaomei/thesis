latex = (latex -interaction=nonstopmode $(1) \
	| grep --color -A3 "\(Warning\|Error\|\!\).*" \
	|| true)


PAPER=diffusion

all: ${PAPER}.pdf clean

.FORCE:
${PAPER}.pdf: ${PAPER}.tex .FORCE
	$(call latex,${PAPER}.tex) > /dev/null
	bibtex ${PAPER} || true
	$(call latex,${PAPER}.tex) > /dev/null
	$(call latex,${PAPER}.tex)

clean:
	$(RM) -Rf *.aux *.bbl *.blg *.out *.log *.lof *.lot *.toc **/*~
