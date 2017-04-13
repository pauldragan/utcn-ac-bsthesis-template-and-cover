# About

This repository contains the LaTeX implementation of the UTC-N AC Bachelor thesis template and cover pages. The compiler used is XeLaTeX. For Windows, replace the fonts in *thesis.cls* and *thesiscover.cls* with Cambria, instead of Caladea, and Calibri, instead of Carlitto.

*thesis.cls* contains commands and configuration regarding the Thesis template.

*thesiscover.cls* contains commands and configuration for the cover pages

# Usage

## Cover

Fill-in the fields (replace the dummy-text) then compile. 

## Thesis

Available commands: 

     1. sectioning
          * \section (counted)
          * \subsection (counted)
          * \subsubsection (counted)
          * \paragraph (uncounted)
          * \maketableofcontents
          * \defaultfont (must be placed at the beginning of the document)
     2. environments (\begin{} ... \end{})
          * thesisfigure{caption}{label}
          * thesisequation{label}
          * thesistable{downscale coefficient}{column styles}{caption}{label}

All the dimensions should coincide with the ones required.
