%%
%% This is file `cornell.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% cornell.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from cornell.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file cornell.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
%% Document class `cornell' to use with LaTeX 2e.
%% Based on `crnlphd' class.  The following is from the file `crnlphd.dtx':
%%   Based loosely on old cuphdthesis style file.
%%   Found to give good results, according to the thesis secretary.
%%   File: crnlphd.dtx Copyright (C) 1994 Sergio Gelato
%%   Made available without any warranty, express or implied.
%%
%% $Id$
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{cornell}
[2002/06/14 v2.6
  Cornell University thesis class]
\newif\ifphd
\DeclareOption{phd}{\phdtrue}
\DeclareOption{master}{\phdfalse}
\ExecuteOptions{phd}
\newif\ifcornellheadings
\newif\ifhalfcornellheadings
\newif\ifsmallerheadings
\DeclareOption{latexheadings}{\cornellheadingsfalse \halfcornellheadingsfalse}
\DeclareOption{cornellheadings}{\cornellheadingstrue \halfcornellheadingsfalse}
\DeclareOption{halfcornellheadings}{\halfcornellheadingstrue \cornellheadingsfalse}
\DeclareOption{normalsizeheadings}{\smallerheadingsfalse}
\DeclareOption{smallerheadings}{\smallerheadingstrue}
\ExecuteOptions{halfcornellheadings}
\ExecuteOptions{smallerheadings}
\DeclareOption{10pt}{%
 \iffinal%
  \OptionNotUsed%
  \ClassWarningNoLine{cornell}{Font size 10pt not allowed; using 12pt}%
 \else%
  \PassOptionsToClass{10pt}{report}%
 \fi%
}
\DeclareOption{11pt}{%
 \final%
  \OptionNotUsed%
  \ClassWarningNoLine{cornell}{Font size 11pt not allowed; using 12pt}%
 \else%
  \PassOptionsToClass{11pt}{report}%
 \fi
}
\newcommand{\prelim@contents}[1]{}
\DeclareOption{tocprelim}{%
  \renewcommand{\prelim@contents}[1]{\addcontentsline{toc}{section}{#1}}
}
\DeclareOption{draft}{%
  \let\ifdraft\iftrue%
  \let\iffinal\iffalse%
  \PassOptionsToClass{final}{report}%
}
\DeclareOption{final}{%
  \let\ifdraft\iffalse%
  \let\iffinal\iftrue%
  \PassOptionsToClass{final}{report}%
}
\DeclareOption{semifinal}{%
  \let\ifdraft\iffalse%
  \let\iffinal\iftrue%
  \PassOptionsToClass{draft}{report}%
}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{report}%
}
\ExecuteOptions{final}
\ProcessOptions

\iffinal\LoadClass[12pt]{report}[1994/06/01]\else\LoadClass{report}[1994/06/01]\fi
\ifcornellheadings
  \def\@makechapterhead#1{%
    \begin{center}%
      \MakeUppercase{\@chapapp\space \thechapter} \\
      \MakeUppercase{\bfseries #1}
    \end{center}%
    }
  \def\@makeschapterhead#1{%
    \begin{center}%
      \MakeUppercase{\bfseries #1}
    \end{center}%
    }
\fi
\ifhalfcornellheadings
  \def\@makeschapterhead#1{%
    \begin{center}%
      \MakeUppercase{\bfseries #1}
    \end{center}%
    }
  \ifsmallerheadings
    \def\@makechapterhead#1{%
      {\parindent \z@ \raggedright \normalfont
        \ifnum \c@secnumdepth >\m@ne
            \LARGE\bfseries \@chapapp\space \thechapter
            \par\nobreak
        \fi
        \interlinepenalty\@M
        \LARGE \bfseries #1\par\nobreak
      }}
  \fi
\fi

\ifsmallerheadings
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\large\bfseries}}
\fi

\renewcommand{\footnotesize}{\normalsize}
\renewcommand{\@makefntext}[1]{%
  \parindent 1em%
  \noindent
  \footnotespacing
  \hbox to 1.8em{\hss\@makefnmark}#1
  \par\normalspacing
}
\renewcommand{\defaultscriptratio}{.75}
\renewcommand{\defaultscriptscriptratio}{.6}
\setlength\headsep{25\p@}
\if@twocolumn
\else
  \setlength\topmargin{-0.4in}
  \setlength\headheight{0.16667in}
  \setlength\headsep{0.33333in}
  \setlength\textheight{8.8in}
  \setlength\footskip{0.5in}
  \setlength\oddsidemargin{.6in}
  \setlength\evensidemargin{.6in}
  \setlength\textwidth{5.80in}
  \setlength\marginparsep{0.1in}
  \setlength\marginparwidth{0.8in}
\fi
\if@compatibility
  \setlength\topmargin{0\p@}
\else
\fi
\newcommand{\ps@cornell}{%
\def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
\def\@oddfoot{}%
\def\@evenhead{\thepage\hfil{\slshape\leftmark}}%
\def\@evenfoot{}%
\def\chaptermark##1{}%
\def\sectionmark##1{}%
}
\newcommand{\ps@cornellc}{%
\def\@oddhead{\hfil\thepage\hfil}%
\def\@oddfoot{}%
\def\@evenhead{\@oddhead}%
\def\@evenfoot{}%
\def\chaptermark##1{}%
\def\sectionmark##1{}%
}
\raggedbottom
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\l@figure}{\@dottedtocline{1}{1.5em}{2.6em}}
\let\l@table\l@figure

\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname
        \@mkboth{\uppercase{\bibname}}{\uppercase{\bibname}}}%
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\arabic{enumiv}}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m\relax
      \addcontentsline{toc}{chapter}{\bibname}
      \singlespacing}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \normalspacing
      \endlist}

\newcommand{\@titlesize}{\Large}
\newcommand{\@subtitlesize}{\large}
\newcommand{\@authorsize}{\normalsize} % No Pharaoh he.
\newcommand{\@conferralmonth}{January}
\newcommand{\@conferralyear}{1995}

\newcommand{\titlesize}[1]{\renewcommand{\@titlesize}{#1}}
\newcommand{\subtitlesize}[1]{\renewcommand{\@subtitlesize}{#1}}
\newcommand{\authorsize}[1]{\renewcommand{\@authorsize}{#1}}
\newcommand{\conferraldate}[2]{%
  \renewcommand{\@conferralmonth}{#1}
  \renewcommand{\@conferralyear}{#2}
}
\newcommand{\@degreefield}{Master of Science}
\newcommand{\degreefield}[1]{\renewcommand{\@degreefield}{#1}}

\renewcommand{\maketitle}{%
  \begin{titlepage}%
    \begin{center}%
      \@titlesize \expandafter\uppercase\expandafter{\@title}
    \end{center}
    \vfill
    \begin{center}
      \@subtitlesize
      A \ifphd Dissertation \else Thesis \fi \\
      Presented to the Faculty of the Graduate School \\
      of Cornell University \\
      in Partial Fulfillment of the Requirements for the Degree of \\
      \ifphd Doctor of Philosophy \else \@degreefield \fi
    \end{center}
    \vfill
    \begin{center}
      \@authorsize
      by \\
      \@author \\
      \@conferralmonth\ \@conferralyear
    \end{center}
  \end{titlepage}
}

\renewenvironment{titlepage}{%
  \typeout{Title page}
  \pagestyle{empty}
  \doublespacing
}{%
  \normalspacing\clearpage
}


\newenvironment{copyrightpage}{%
  \typeout{Copyleft page}
  \pagestyle{empty}
  \null\vfil
  \begin{center}
}{%
  \end{center}
  \vfil\null
  \clearpage%
}

\newcommand{\makecopyright}{%
  \begin{copyrightpage}
  \copyright\ \@copyrightyear{} \@copyrightholder \\
  ALL RIGHTS RESERVED \\[.5in]
  \end{copyrightpage}%
}
\newcommand{\@copyrightholder}{\@author}
\newcommand{\@copyrightyear}{\@conferralyear}

\newcommand{\copyrightholder}[1]{\renewcommand{\@copyrightholder}{#1}}
\newcommand{\copyrightyear}[1]{\renewcommand{\@copyrightyear}{#1}}

\newcommand{\makepublicdomain}{%
  \begin{copyrightpage}
  This document is in the public domain.
  \end{copyrightpage}%
}


\newlength{\@abhdskip}%
\renewenvironment{abstract}{
  \typeout{Abstract}
  \setlength{\@abhdskip}{.6in}
  \addtolength{\@abhdskip}{-\topmargin}
  \addtolength{\@abhdskip}{-\headheight}
  \addtolength{\@abhdskip}{-\headsep}
  \addtolength{\@abhdskip}{-\baselineskip}
  \begin{center}%
    \vspace*{\@abhdskip}%
    \ifphd%
      {\def\\{\noexpand\\} \xdef\@abstracttitle{\@abstracttitle}}
      \expandafter\uppercase\expandafter{\@abstracttitle} \\[0.5\baselineskip]
      \@author,\ Ph.D. \\
      Cornell University\ \@conferralyear%
    \else
      \normalsize \bfseries\selectfont
      ABSTRACT
    \fi%
    \vspace{0.5\baselineskip}%
  \end{center}%
  \pagestyle{empty}
  \thispagestyle{empty}
}{%
  \clearpage
}

\newcommand{\@abstracttitle}{\@title}
\newcommand{\abstracttitle}[1]{\renewcommand{\@abstracttitle}{#1}}


\newenvironment{biosketch}{%
  \typeout{Vita}
  \pagestyle{plain}
  \pagenumbering{roman}
  \setcounter{page}{3}
  \prelim@contents{Biographical Sketch}
  \chapter*{Biographical Sketch}
}{%
  \clearpage
}

\newenvironment{dedication}{%
  \prelim@contents{Dedication}
  \null\vfil
  \begin{center}
}{
  \end{center}
  \vfil\null
  \clearpage
}

\newenvironment{acknowledgements}{%
  \prelim@contents{Acknowledgements}
  \chapter*{Acknowledgements}
}{%
  \cleardoublepage
}

\newcommand{\contentspage}{%
  \singlespacing
  \label{toc}
  \prelim@contents{\contentsname}
  \tableofcontents
  \normalspacing
  \clearpage
}

\newcommand{\tablelistpage}{%
  \singlespacing
  \label{lot}
  \prelim@contents{\listtablename}
  \listoftables
  \normalspacing
  \clearpage
}

\newcommand{\figurelistpage}{%
  \singlespacing
  \label{lof}
  \prelim@contents{\listfigurename}
  \listoffigures
  \normalspacing
  \clearpage
}
\newcommand{\abbrlist}{%
  \singlespacing
  \prelim@contents{List of Abbreviations}
  \chapter*{List of Abbreviations}
}

\newcommand{\symlist}{%
  \singlespacing
  \prelim@contents{List of Symbols}
  \chapter*{List of Symbols}
}

\newcommand{\preface}{%
  \singlespacing
  \prelim@contents{Preface}
  \chapter*{Preface}
}

\newcommand{\singlespacing}{%
  \let\CS=\@currsize\renewcommand{\baselinestretch}{1.0}\tiny\CS}
\newcommand{\singlespacingplus}{%
  \let\CS=\@currsize\renewcommand{\baselinestretch}{1.25}\tiny\CS}
\newcommand{\doublespacing}{%
  \let\CS=\@currsize\renewcommand{\baselinestretch}{1.75}\tiny\CS}
\newcommand{\realdoublespacing}{%
  \let\CS=\@currsize\renewcommand{\baselinestretch}{2}\tiny\CS}
\newcommand{\normalspacing}{\doublespacing}
\newcommand{\footnotespacing}{\singlespacing}
\newcommand{\changespacing}[2]{%
  \renewcommand{#1}{%
    \let\CS=\@currsize\renewcommand{\baselinestretch}{#2}\tiny\CS}%
}
\ifdraft\changespacing{\normalspacing}{1}\fi
\newcommand{\changenormalspacing}[1]{\renewcommand{\normalspacing}{#1}}
\normalspacing

\endinput
%%
%% End of file `cornell.cls'.
