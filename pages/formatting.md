# Formatting

This part is probably the easiest, though the most detailed. Once you have good sentences and paragraphs, you should also get the punctuation and spelling right.


# Punctuation

### Placement of Punctuation Marks and Spaces

Place commas and points correctly. Also leave exactly one space between words. Two spaces must never follow each other. The following lines all contain a problem:

...write nicely ,no matter why. ...sentence.Next sentence... ...two  spaces between words.

### Semicolons

When you use a semicolon, there is a big chance that you are using it wrong, or that it is not necessary at all. Therefore, don’t use semicolons.

### Footnotes

Footnote marks at the end of sentences should be placed *after* the period. In LaTeX, the necessary code looks like this:

```latex
...this sentence.\footnote{...}
```

### Quotation Marks

Correct quotation marks are produced in LaTeX by the following characters \`\``quoted''` to produce “quoted.” Note that each quotation mark consists of two characters.

When a quotation mark happens at the end of a sentence, include the period within the quotation marks.

**Wrong:** “quoted”.

**Correct:** “quoted.”

### Parentheses

Using parentheses (like these) can in some case clarify some issue. Avoid using too many of them, since it makes a sentence harder to read.

### Paragraphs

A paragraph consists of several sentences that are grouped together. A paragraph only consisting of a single sentence is probably too short, or the sentence is too long.

There are only two ways to separate paragraphs from each other, and within your report you have to stick to one of these two:

- Paragraphs are separated by spaces between them.
- Paragraphs are separated by an indentation of the first line, but without additional space.

The former is typically used for publications on the web that are read in a browser, while the latter is often used for publications on PDF and paper. It is not allowed to simply start a new line, but without either extra space between the paragraphs or without the indentation.

### Citations

Citations must always be grouped within their brackets, that means [1,2,3] or [1-3] instead of [1][3],[2]. 
If you use numbers, they should be sorted in increasing order. In Latex, this means to group all the reference keys within the same `\cite{}` command, separated by a comma.

To have a proper blank between the text and a citation, use a tilde and write `...means~\cite{QUOTE1,QUOTE2}`.

Figures that are not produced by the author for that specific document must also be cited within the caption of the figure.

Citations at the end of a sentence must still appear within the sentence, that means _before_ the period.

Websites should not be included as footnotes, but as proper citations, just as other publications.

### Emphasis

In general, avoid `typewriter` text and use `\emph{...}` to *emphasize* words with special meaning. Don't underline words or headings. (Underlining was useful during the era of mechanical typewriters that did not have bold or italic font variants.)

### Abbreviations

The following abbreviation are used when referring to elements in the text: *Fig. 1*, *Tab. 2*, *Sect. 3*, *Chapt. 4*. When these words stand in the beginning of a sentence, do *not* abbreviate them. To separate the words correctly from the numbers, use the tilde and write `Fig.~\ref{fig}`. Note there are no spaces between the point and the tilde.

### Guillemets

Guillemets are easy to get with the package `\usepackage{aeguill}` and the commands `\guillemotleft` and `\guillemotright`.

### Trademarks

Do not add any trademark signs. They have no meaning in your report, and just look silly.

### Units

Use a space between numbers and the subsequent unit. In LaTeX, write the following to keep the space smaller than between other words: `...5\,ms...`

**Correct:** The timer is set to 5 ms.

**Wrong:** The timer is set to 5ms.

An exception is the percent sign, for which we find different practices. I suggest that you add a short space between a number and the percent symbol. In Latex, you need to escape the percent sign by writing `\%`. To add a short space between number and percentage sign, use the `\,` command.

```latex
30\,\%
```


# Other Style Issues


## Empty Section Starts

Avoid empty starts of sections, that means that a lower-level section follows a higher-level one without an intermediate paragraph. Such an intermediate paragraph helps the reader to understand the structure of the document. Leaving it away is a missed chance to explain things and capture the attention of the reader.

## Capitalization

Capitalize section and chapter headings, consequently and correctly. The website [http://titlecase.com]() helps you with proper capitalization.

**Wrong:** Proper Capitalization Of the Right Words is Your Own Responsibility

**Correct:** Proper Capitalization of the Right Words Is Your Own Responsibility


## Model and Program Names

Names of Java or UML classes should be written in normal English form, that means for instance *state machine* instead of *StateMachine*. When it should be made clear that a specific name is meant, the name should be printed emphasized, to make clear that you write about the UML class *StateMachine*. Since most programming languages use American English (UML refers to *behavior*, not *behaviour*), you may want to use American English for the entire text.

## Avoid Referring to “He” or “She”

Avoid referring to gender in examples. Usually this is possible by using plural. For instance *“...users may operate their phones...”*



# Figures

### Orientation

If it is not possible to fit a figure in portrait orientation, consider landscape orientation. Make sure, however, that you turn the figure in such a way that readers have to turn their paper 90 degrees clockwise, as shown in the figure below.

---
type: figure
source: figures/orientation.png
caption: "Both portrait and landscape orientation are fine. Make sure landscape is readable from the right."
---

### Captions

Captions are text below the figures that explain what the figures show. Many keep these captions very short, like a single sentence or only a few words. This is a missed chance to explain more details to readers and get them interested in the entire section. Instead, use longer caption texts where it makes sense. Explain for instance all elements in a figure, or point out what is interesting in a figure. Such a more elaborated caption should come in addition to the explanation of the figure in the text. It can also be a summary of the description in the text.

In Latex, the cation for a figure is produced with the command `\caption{}`. The argument of this command is the text that is written under the figure. By default, it is also included in the list of figures, where you usually don’t want a long caption. In this case, use the additional argument in the square brackets to provide a short text that is included in the list of figures.

```latex
\caption[Short caption]{Long version of the caption...}
```

### More tips for Figures

- Ensure that text in images is readable and not too small.
- Whenever possible, use vector graphics and embed figures in PDF format. In case you need bitmap images, use PNG instead of JPEG, or ensure that JPEG is not compressed so much that compression artifacts are visible.
- Do not use borders around figures.
- Do not use any colored backgrounds.


