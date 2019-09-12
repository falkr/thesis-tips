all:
	@echo "Specify a target."

html-css:
	pandoc tips.md -o docs/index.html --from markdown --to html --css ../pandoc.css --number-sections
	
html-marigold:
	pandoc tips.md -o docs/index.html --from markdown --to html --template marigold.html --number-sections
	
html-ntnu:
	pandoc tips.md -o docs/index.html --from markdown --to html --template ntnu.html --number-sections --table-of-contents

pdf:
	pandoc tips.md -o docs/tips.pdf --from markdown --template eisvogel.latex --number-sections
