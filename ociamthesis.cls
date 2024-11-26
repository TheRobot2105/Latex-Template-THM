% ociamthesis
% 
% Originally by Keith A. Gillow (gillow@maths.ox.ac.uk), 1997
% Modified by Sam Evans (sam@samuelevansresearch.org), 2007
% Modified by John McManigle (john@oxfordechoes.com), 2015
%
% This version Copyright (c) 2015-2017 John McManigle
%
% Broad permissions are granted to use, modify, and distribute this software
% as specified in the MIT License included in this distribution's LICENSE file.
%
%
%-------------------------- identification ---------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ociamthesis}[2015/04/30 Oxford thesis class]
%-------------------------- initial code -----------------------

% JEM: Defaults to one-side, but passing 'twoside' should set everything up for that
\LoadClass[openright,12pt]{report}

\newif\ifmc@nobind
\mc@nobindfalse

\DeclareOption{nobind}{\mc@nobindtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\setlength{\parskip}{0pt plus 1pt}
\setlength{\parfillskip}{0pt plus .7\textwidth}

% JEM: Lengths for single spacing (ie separate abstract, captions), front matter (abstract,
%   acknowledgements, table of contents, etc), and main body text.
\newlength{\singlebaselineskip}
\newlength{\frontmatterbaselineskip}
\newlength{\textbaselineskip}

\setlength{\singlebaselineskip}{\baselineskip}
\setlength{\frontmatterbaselineskip}{17pt plus1pt minus1pt}
\setlength{\textbaselineskip}{22pt plus2pt}

\usepackage{varwidth}


%
% Define text area of page and margin offsets
%

\ifmc@nobind
\usepackage[includehead,hmargin={3.1cm, 3.1cm}, vmargin={2.5cm,2.7cm}, headsep=.8cm,footskip=1.2cm]{geometry}
\else
\usepackage[includehead,hmargin={3.6cm, 2.6cm}, vmargin={2.5cm,2.7cm}, headsep=.8cm,footskip=1.2cm]{geometry}
\fi

\usepackage{xcolor}
\definecolor{grey60}{gray}{0.6}

\usepackage{graphicx}

\usepackage{setspace} % For line spacing




\usepackage{microtype}
\usepackage{nicefrac}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{textcomp}

\usepackage{longtable}
% Allows tables to span multiple pages (this package must be called before hyperref)

\usepackage{tabularx}
% Allows tables to have flexible-width columns

\usepackage[font=small,labelfont=bf]{caption}
% Nicer captions

\usepackage{multicol,multirow,array}
% Used to make multiple columns for the indices and for creating columns that span multiple rows in tables

\usepackage{rotating}
% To allow tables in landscape mode

\usepackage{booktabs}
% For better looking tables

\usepackage{pdfpages}
% Allows multi-page pdfs to be inserted as graphics

\usepackage{xfrac}

%\usepackage{enumerate} 
% Allows different numbering styles for Lists
% to use:
% \begin{enumerate}[x]
% \item text
% \end{enumerate}
% where x is:
% A	uppercase letters (as produced by \Alph)
% a	lowercase letters (as produced by \alph)
% I	uppercase roman numerals (as produced by \Roman)
% i	lowercase roman numerals (as produced by \roman)
% 1	arabic numbers (as produced by \arabic)

% JEM the following package allows changing spacing in lists (for acknowledgements)
\usepackage{enumitem}

% JEM the following allows table columns aligned by decimal point
\usepackage{dcolumn}
\newcolumntype{d}[3]{D{.}{\cdot}{#1} }

\usepackage{appendix}
% For helping format appendicies
\usepackage{notoccite}
% To format the bibliography


\usepackage[colorlinks=false,pdfpagelabels]{hyperref}
% for linking between references, figures, TOC, etc in the pdf document

\usepackage[nohints,tight]{minitoc}
\setcounter{minitocdepth}{2}
% Generates mini tables of contents per chapter

% JEM: The following fixes minitoc to not be multiple-spaced.
\let\oldmtc@verse\mtc@verse
\renewcommand{\mtc@verse}[1]{\oldmtc@verse{#1}\setlength{\baselineskip}{\z@}}


%
% Environments
%

% This macro define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
    \@restonecolfalse
    \if@twocolumn\@restonecoltrue\onecolumn
    \else\if@openright\cleardoublepage\else\clearpage\fi
    \fi}%
    {\if@restonecol\twocolumn
    \else\newpage\thispagestyle{empty}\fi}


% DEDICATION
%
% The dedication environment makes sure the dedication gets its own page and is set out in verse format.

\newenvironment{dedication}
{\begin{alwayssingle}
     \thispagestyle{empty}
     \vspace*{\fill} \begin{center}}
     {\end{center}\vspace*{\fill}\vspace*{\fill}
\end{alwayssingle}}


% OTHER PAGES
%
% The (...) environment puts a large, bold, centered "(...)" label at the top of the page. The (...) themselves appear in a quote environment, i.e. tabbed in at both sides, and on its own page.

% acknowledgements / Danksagung
\newenvironment{acknowledgements}%
{   \begin{alwayssingle}
        \chapter*{Danksagung}
        \thispagestyle{empty}
        \pagestyle{empty}
        \setlength{\baselineskip}{\frontmatterbaselineskip}
        }
        {
\end{alwayssingle}}

% preliminary remarks / Vorbemerkung
\newenvironment{preliminary-remarks}%
{   \begin{alwayssingle}
        \chapter*{Vorbemerkung}
        \thispagestyle{empty}
        \pagestyle{empty}
        \setlength{\baselineskip}{\frontmatterbaselineskip}
        }
        {
\end{alwayssingle}}

% preface / Vorwort
\newenvironment{preface}%
{   \begin{alwayssingle}
        \chapter*{Vorwort}
        \thispagestyle{empty}
        \pagestyle{empty}
        \setlength{\baselineskip}{\frontmatterbaselineskip}
        }
        {
\end{alwayssingle}}

% abstract / Abstract
\renewenvironment{abstract}%
{   \begin{alwayssingle}
        \chapter*{Abstract}
        \thispagestyle{empty}
        \pagestyle{empty}
        \setlength{\baselineskip}{\frontmatterbaselineskip}}
        {
\end{alwayssingle}}

% declaration of authorship / Eigenständigkeitserklärung
\newenvironment{declaration-of-authorship}%
{   \begin{alwayssingle}
        \chapter*{Eigenständigkeitserklärung}
        \thispagestyle{plain}
        \pagestyle{plain}
        \setlength{\baselineskip}{\frontmatterbaselineskip}
        }
        {
\end{alwayssingle}}

% non-disclosure notice / Sperrvermerk
\newenvironment{non-disclosure-notice}%
{   \begin{alwayssingle}
        \chapter*{Sperrvermerk}
        \thispagestyle{empty}
        \pagestyle{empty}
        \setlength{\baselineskip}{\frontmatterbaselineskip}
        }
        {
\end{alwayssingle}}


%ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).
%
% Edited by JEM

\newenvironment{romanpages}
{\cleardoublepage\setlength{\baselineskip}{\frontmatterbaselineskip}\setcounter{page}{1}\renewcommand{\thepage}{\Roman{page}}}
{\cleardoublepage\setcounter{page}{1}\renewcommand{\thepage}{\arabic{page}}}


%Figure placement on page
%
%This is to help prevent too many figures on their own pages.  I got it from:
% http://dcwww.camd.dtu.dk/~schiotz/comp/LatexTips/LatexTips.html#captfont

\renewcommand{\topfraction}{0.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\floatpagefraction}{0.75}
\usepackage{etoolbox}


% JEM: VERSE, QUOTATION, and QUOTE must be single-spaced.
% These rename the internal commands for the \begin{...} and
% \end{...} environment commands.
\let\@ldquote=\quote
\let\@ldendquote=\endquote
\renewenvironment{quote}
{\@ldquote\setlength{\baselineskip}{\singlebaselineskip}}
{\@ldendquote}

\let\@ldqttn=\quotation
\let\@ldendqttn=\endquotation
\renewenvironment{quotation}
{\@ldqttn\setlength{\baselineskip}{\singlebaselineskip}}
{\@ldendqttn}

\let\@ldverse=\verse
\let\@ldendverse=\endverse
\renewenvironment{verse}
{\@ldverse\setlength{\baselineskip}{\singlebaselineskip}}
{\@ldendverse}

% JEM: Stuff for List of Abbreviations (or Glossary or other list)
\usepackage{calc}
\newcommand{\t@cfill}{\cleaders\hbox{$\m@th \mkern\@dotsep mu . \mkern\@dotsep mu$}\hfill}
\newcommand{\abbrl@bel}[1]{\makebox[\labelwidth][l]{\textbf{#1}\ \t@cfill}}
\newenvironment{mclistof}[2]{%
    \chapter*{#1}%
    \addcontentsline{toc}{chapter}{#1}
    \begin{list}{}%
    {\renewcommand{\makelabel}{\abbrl@bel}%
    \setlength{\labelwidth}{#2}%
    \setlength{\leftmargin}{\labelwidth+\labelsep}%
    \setlength{\itemsep}{0pt}%
    \markboth{#1}{#1}%
    }}
    {\end{list}\mtcaddchapter}


\usepackage[grey, utopia]{quotchap}
\renewcommand{\chapnumfont}{\fontsize{100}{150}\fontspec{Utopia Semibold}[BoldFont={Utopia Semibold}]\color{grey60}}

%To put nice quotes at the beginning of the chapters

\usepackage[nottoc]{tocbibind}
% Used for inserting the Bibliography, List of Figures, indices, etc into the table of contents.

% JEM: Allow flexible spacing after figures, to reduce other stretching
\setlength{\textfloatsep}{20pt plus15pt minus4pt}

% JEM: Fix paragraph spacing within quotes for multi-par quotes
\renewenvironment{savequote}[1][10cm]{%
    \begin{lrbox}{\@quotebox}
        \begin{minipage}[t]{#1}
            \footnotesize\slshape%
            \setlength{\parskip}{6pt}}{%
            \unskip
        \end{minipage}
    \end{lrbox}
    \global\setbox\@quotebox\copy\@quotebox
    \global\let\@printcites\@iprintcites
    \ignorespacesafterend}
\renewcommand{\qauthor}[1]{\par
{\raggedleft\upshape #1\qquad\hbox{}\par}\bigskip}

% JEM: All of this is so that headers in these sections aren't uppercase
\let\@ldtoc\tableofcontents
\renewcommand*\tableofcontents{{%
    \renewcommand*\MakeUppercase[1]{##1}\@ldtoc}}
\let\@ldlof\listoffigures
\renewcommand*\listoffigures{{%
    \renewcommand*\MakeUppercase[1]{##1}\@ldlof}}
\let\@ldlot\listoftables
\renewcommand*\listoftables{{%
    \renewcommand*\MakeUppercase[1]{##1}\@ldlot}}
\let\@ldbib\bibliography
\renewcommand*\bibliography[1]{{%
    \renewcommand*\MakeUppercase[1]{##1}\@ldbib{#1}}}

% JEM: for crazy multi character set quotes and Unicode and all
%\usepackage[LGR,TS1,T1]{fontenc} % in combination with lmodern and xelatex unable to display "ß"; however, with libertine it did work
\usepackage{fontspec}
\usepackage[utf8]{inputenc}
\usepackage{lmodern}
%\usepackage{libertine} % looks quite good as well
\usepackage[ngerman]{babel}
\usepackage{csquotes}
\hyphenpenalty=500
\def\longs{{\fontencoding{TS1}\selectfont s}}

% LOCALIZATION
\addto\captionsngerman{%keep the %'s, the formatting of this part was a problem once...
% appendices
    \renewcommand{\appendixname}{Anhang}%
    \renewcommand{\appendixpagename}{Anhänge}%
    \renewcommand{\appendixtocname}{Anhänge}%
    % minitoc
    \renewcommand{\mtctitle}{Inhaltsverzeichnis}%
    % references
    \renewcommand{\bibtitle}{Literaturverzeichnis}%
%\renewcommand{\bibtitlesecondary}{Sekundärliteratur}%
%\renewcommand{\bibtitlereadbutnotcited}{Bibliographie}%
}

% JEM: for highlighting corrections
\newlength{\mccurrentbaselineskip}
\newlength{\mccurrentparskip}
\newlength{\mccurrentparindent}
\newif\ifcorrections
\newif\ifm@csection
\m@csectionfalse
\correctionsfalse

\colorlet{shadecolor}{blue!20}

\usepackage{framed}
\OuterFrameSep=-9pt
\newenvironment{mccorrection}
{\ifcorrections\if@nobreak\m@csectiontrue\fi\begin{shaded}
                                                \ifm@csection\noindent\ignorespaces\fi\fi}
                                                {\ifcorrections
\end{shaded}\m@csectionfalse\ifx\@captype\@undefined\@nobreakfalse\fi\fi}

\usepackage{soul}
\sethlcolor{shadecolor}
\newcommand{\mccorrect}[1]{\ifcorrections\hl{#1}\else#1\fi}


% JEM: adjust start-of-chapter spacing
\renewcommand{\chapterheadstartvskip}{\vspace*{40pt}}
\renewcommand{\chapterheadendvskip}{\vspace{30pt}}


% JEM: combine all of the commands you run before appendices start
\newcommand{\startappendices}
{\appendix\adjustmtc\noappendicestocpagenum\addappheadtotoc\appendixpage}

%%%%% GLOSSARIES %%%%%
% Load glossaries-extra package
\usepackage[automake,toc,acronym,section=chapter]{glossaries-extra}
% Configure glossaries
% Set category attributes for index ordering
\glssetcategoryattribute{abbreviation}{index}{0} % Abbreviations
\glssetcategoryattribute{general}{index}{1}      % General Glossary
\glssetcategoryattribute{symbol}{index}{2}       % Symbols
% Define glossaries
% Set the abbreviation style to long-short
\setabbreviationstyle[acronym]{long-short}
% Define custom glossary types
\newglossary*{symbols}{List of Symbols}
% Ensure glossaries are created
\makeglossaries

%%%%% SOURCE CODE %%%%%
% Vorarbeit: python installieren, pygments über pip installieren, alles dem Path hinzufügen und neustarten; außerdem: shell escape "texify --tex-option=--shell-escape"/"xelatex -shell-escape ..."
% \inputminted ist ein wenig schwer von Verstand und kommt mit den Pfaden durcheinander. Lösung: Nicht wie bei Grafifken code/snippet1.py als Pfad angeben, sondern den gesamten Systempfad, damit eindeutig ist, wo das Snippet liegt, dann klappt's auch. (Normale Slashes verwenden). Achtung: Leerzeichen im Verzeichnis ebenfalls problematisch (vor allem bei Google Drive unvermeidbar), besser C:/latex/bla.
\usepackage[cache=false]{minted2}
\setminted{frame=lines,framesep=2.5mm,baselinestretch=1,linenos,breaklines}
% listing
\usepackage{newfloat}
\DeclareFloatingEnvironment[listname=code, name=Quellcode]{code}



\def\@makechapterhead#1{%
	{\parindent \z@ \raggedright \normalfont \vskip 20\p@%
		\ifnum \c@secnumdepth >\m@ne
		\normalsize\bfseries \thechapter\ % <-- Chapter # (without "Chapter")
		\fi
		\interlinepenalty\@M
		#1\par\nobreak% <------------------ Chapter title
		\vskip 5\p@% <------------------ Space between chapter title and first paragraph
}}

\renewcommand\section{\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\normalsize\bfseries}}
\usepackage{etoolbox}
\makeatletter
\patchcmd{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi}{}{}{}
\makeatother
\usepackage{fancyhdr}
\fancypagestyle{plain}{%
	% Put code that you want to generate the header and footer on chapter pages here
	% example is below
	\fancyhf{}%
	\fancyhead[R]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
}