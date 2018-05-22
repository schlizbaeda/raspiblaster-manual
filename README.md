# raspiblaster-manual
Multilingual LaTeX manual for schlizbäda's raspiblaster

download:
`git clone https://github.com/schlizbaeda/raspiblaster-manual`

compile:
`pdflatex raspiblaster_en`


## Supported languages
At the moment this documentation is released for following languages:
* English 
* German

The pdf document translated into a certain language can be found at 
* [`raspiblaster_en.pdf`](https://github.com/schlizbaeda/raspiblaster-manual/blob/master/raspiblaster_en.pdf)
* [`raspiblaster_de.pdf`](https://github.com/schlizbaeda/raspiblaster-manual/blob/master/raspiblaster_de.pdf)


## Addition of further languages
For each supported language there exists a file named `raspiblaster_??.tex` where `??` is replaced by the 
[ISO 3166 ALPHA-2 code](https://en.wikipedia.org/wiki/ISO_3166-1). 
These files start like this where the language definitions have to be adjusted according to LaTeX syntax:
```
\documentclass[
    11pt,      % font size
    DIV10,
    english,   % language-specific package (umlauts, hyphenation etc.)
    textgreek,
    a4paper,   % paper size and format
    oneside,   % single-sided document
    titlepage, % usage of cover sheet
    parskip=half,          % spacing between paragraphs (half line)
    headings=normal,       % reduce size of captions
    listof=totoc,          % add lists to table of contents
    bibliography=totoc,    % add bibliography to table of contents
    index=totoc,           % add indices to table of contents
    captions=tableheading, % add annotations under figures 
    final                  % document's state (final/draft)
]{scrreprt}

% LANGUAGE OF DOCUMENT ---------------------------------------------------------
% Adjustment of the document's language ----------------------------------------
\usepackage[english]{babel} 
%\usepackage[ngerman]{babel}

% Here you can select the document's language. Any language-specific 
% part will be replaced. 
\newcommand{\lang}{en}
%\newcommand{\lang}{de}
% ------------------------------------------------------------------------------
```

The directory `layout` contains *.tex files which consist of language-independent and language-dependent parts. The language-dependent parts are stored in a sub directory `en` resp. `de`. To add a further language copy one of these sub directories to a new one named according to ISO 3166 ALPHA 2. Translate the containing files into the new language.

The directory `chapter` only some language-specific sub directories like `en` where the language-specific *.tex files are stored. Copy one sub directory to a new one named according to ISO 3166 ALPHA 2 and translate all *.tex files inside.

The directory `pics` contains picture files. Some of them needn't to be translated which are stored directly at `pics`. The language-dependent pictures (e.g. screen shots) can be found in the language-dependent sub directories `en`, `de` and so on.

