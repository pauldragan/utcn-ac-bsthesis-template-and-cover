\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2017/04/11 Bachelor Thesis Template UTCN]

\LoadClass[12pt, a4paper]{article}

%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}

\RequirePackage{mathtools}
\RequirePackage{amsmath}

% Needed to manage fonts
\ifxetex
  % \RequirePackage[quiet]{fontspec}
  % \RequirePackage[no-math]{fontspec}
  \RequirePackage{fontspec}
  % To support LaTeX quoting style
  \defaultfontfeatures{Ligatures=TeX}
  \setmainfont{Caladea}
  % \setmathfont{Latin Modern Math}
\else
  \RequirePackage[T1]{fontenc}
  % Replace by the encoding you are using
  \RequirePackage[utf8]{inputenc}
\fi
% Needed to manage math fonts
\RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}
% \RequirePackage{mathspec}
% Needed to use icons from font-awesome
% (https://github.com/posquit0/latex-fontawesome)
% \RequirePackage{fontawesome}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage{hyperref}
\hypersetup{
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={},
  colorlinks=false,
  allbordercolors=white
}
\RequirePackage{graphicx}
\RequirePackage{chngcntr}
\RequirePackage{caption}
\RequirePackage{tabularx}
\RequirePackage{tabulary}
\RequirePackage{environ}
\RequirePackage{threeparttable}
\RequirePackage{enumitem}
% \RequirePackage{etoolbox}
\RequirePackage{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}
\RequirePackage[section]{placeins}
\RequirePackage[backend=bibtex8, style=ieee, citestyle=ieee]{biblatex}
% \RequirePackage[english]{babel}
%\RequirePackage{underscore}



%-------------------------------------------------------------------------------
%                Configuration for layout
%-------------------------------------------------------------------------------
%% Page Layout
% Configure page margins with geometry
%\geometry{left=2.5cm, top=2.5cm, right=2.5cm, bottom=2.5cm, footskip=1.27cm}
% \geometry{left=2.5cm, headsep=1.17cm, top=2.5cm, right=2.5cm, footskip=1.17cm, textheight=24.7cm}
\geometry{left=2.5cm, headsep=0.71cm, headheight=0.52cm, top=2.5cm, right=2.5cm, footskip=1.23cm, textheight=24.7cm}

% Bibliography
\patchcmd{\thebibliography}{\section*}{\section}{}{}


%-------------------------------------------------------------------------------
%                Configuration for fonts
%-------------------------------------------------------------------------------
\newfontfamily\defaultfont{Caladea}

%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}

% \newcommand*{\header1style}[1]{{\fontsize{24pt}{1em}\defaultfont}}
\newcommand*{\captionstyle}[1]{{\fontsize{10pt}{12pt}\defaultfont\itshape\color{darkgray}\selectfont #1 \par}}
\newcommand*{\captionlabelstyle}[2]{{\fontsize{10pt}{12pt}\defaultfont\itshape\color{darkgray}\selectfont #1 #2 }}
\newcommand*{\headerstyle}[1]{{\fontsize{10pt}{1em}\itshape\bfseries #1 }}

%-------------------------------------------------------------------------------
%                Configuration for paragraphs
%-------------------------------------------------------------------------------
\setlength{\parskip}{6pt}
\linespread{1.0}
\renewcommand{\baselinestretch}{1.1}

%-------------------------------------------------------------------------------
%                Configuration for headings
%-------------------------------------------------------------------------------

\makeatletter

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-24pt \@plus -4pt \@minus -.2ex}%
                                   {12pt}%
                                   {\normalfont\fontsize{24pt}{0em}\upshape}}
                                   
\renewcommand\subsection{\@startsection {subsection}{2}{\z@}%
                                   {-18pt \@plus -4pt \@minus -.2ex}%
                                   {6pt}%
                                   {\normalfont\fontsize{14pt}{0em}\bfseries}}
                                   
\renewcommand\subsubsection{\@startsection {subsubsection}{3}{\z@}%
                                   {-6pt \@plus -4pt \@minus -.2ex}%
                                   {6pt}%
                                   {\normalfont\bfseries}}
                                   
%\renewcommand\paragraph{\@startsection {paragraph}{4}{\z@}%
%                                   {-6pt \@plus -4pt \@minus -.2ex}%
%                                   {+0.01em}%
%                                   {\normalfont\itshape}}
%                                   
\renewcommand\paragraph{\@startsection {paragraph}{4}{\z@}%
                                   {-6pt \@plus -4pt \@minus -.2ex}%
                                   {-1em}%
                                   {\normalfont\itshape}}
                                   
\makeatother

%-------------------------------------------------------------------------------
%                Configuration for header and footer
%-------------------------------------------------------------------------------
\renewcommand{\sectionmark}[1]{\markleft{\thesection.\ #1}}

\pagestyle{fancy}% Change page style to fancy
\fancyhf{}% Clear header/footer

% Set offset to each header and offset
\fancyhfoffset{0em}

\newlength\FHleft
\newlength\FHright

\setlength\FHleft{4cm}
\setlength\FHright{4cm}

\fancyhead[C]{\headerstyle{\nouppercase{\leftmark}}}
\fancyfoot[C]{\thepage}% \fancyfoot[R]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}% Default \headrulewidth is 0.4pt
\renewcommand{\footrulewidth}{0.2pt}% Default \footrulewidth is 0pt

% The new definition of headrule that will take into acount the trimming(s)
\newbox\FHline
\setbox\FHline=\hbox{\hsize=\paperwidth%
  \hspace*{\FHleft}%
  \rule{\dimexpr\headwidth-\FHleft-\FHright\relax}{\headrulewidth}\hspace*{\FHright}%
}
\renewcommand\footrule{\vskip-.7\baselineskip\copy\FHline}

%-------------------------------------------------------------------------------
%                Configuring figures
%-------------------------------------------------------------------------------
\counterwithin{figure}{section}
\DeclareCaptionFont{captionsyle}{\fontsize{10pt}{12pt}\color{darkgray}\itshape\selectfont}
\captionsetup{labelsep=period,labelfont=captionsyle,textfont=captionsyle}

%\newenvironment{thesisfigure}[2]{
%	\begin{figure}
%		\centering
%		\captionabove{#1}
%		\label{fig:#2}
%		}
%		{
%	\end{figure}
%	}

\NewEnviron{thesisfigure}[3][h]{
	\begin{figure}[#1]
		\centering
		\BODY
		\caption{#2}
		\label{fig:#3}
	\end{figure}
}
	
%-------------------------------------------------------------------------------
%                Configuring equations
%-------------------------------------------------------------------------------
\counterwithin{equation}{section}

\NewEnviron{thesisequation}[1]{
	\begin{equation}
		\label{eq:#1}
		\BODY
	\end{equation}
}

%-------------------------------------------------------------------------------
%                Configuring algorithms
%-------------------------------------------------------------------------------
\counterwithin{algorithm}{section}

\NewEnviron{thesisalgorithm}[3][h]{
	\begin{algorithm}[#1]
		\caption{#2}
		\begin{algorithmic}[1]
			\BODY
		\end{algorithmic}
		\label{alg:#3}
	\end{algorithm}
}

%-------------------------------------------------------------------------------
%                Configuring tables
%-------------------------------------------------------------------------------
\counterwithin{table}{section}
\captionsetup[table]{justification=raggedright,singlelinecheck=off}
\NewEnviron{thesistable}[5][h]{
	\begin{table}[#1]
	\centering
	\begin{threeparttable}
	\caption{#4}
	\label{tab:#5}
	\begin{tabularx}{#2\linewidth}{#3}
		\BODY
	\end{tabularx}
	\end{threeparttable}
	\end{table}
}



%-------------------------------------------------------------------------------
%                Make commands
%-------------------------------------------------------------------------------
\newcommand{\maketableofcontents}{{\tableofcontents\newpage}}



