\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecture}
\RequirePackage{ifthen}
\RequirePackage[nodayofweek]{datetime}

%%% Options
% Language (english,italian)
\DeclareOption{english}{
  \newcommand{\notes@lang}{english}
\newdateformat{gbdate}{\ordinal{DAY} \monthname[\THEMONTH] \THEYEAR}
\gbdate
  \newcommand{\notes@lecturename}{Lecture}
  \newcommand{\notes@theoremname}{theorem}
  \newcommand{\notes@propositionname}{proposition}
  \newcommand{\notes@lemmaname}{lemma}
  \newcommand{\notes@corollaryname}{corollary}
  \newcommand{\notes@definitionname}{definition}
  \newcommand{\notes@examplename}{example}
  \newcommand{\notes@exercisename}{exercise}
  \newcommand{\notes@remarkname}{remark}
  \newcommand{\notes@factname}{fact}
  \newcommand{\notes@problemname}{problem}
  \newcommand{\notes@conjecturename}{conjecture}
  \newcommand{\notes@claimname}{claim}
  \newcommand{\notes@notationname}{notation}
  \newcommand{\notes@morelinkname}{For more visit}}
  %
\DeclareOption{usenglish}{
  \newcommand{\notes@lang}{english}
  \newdateformat{usvardate}{\monthname[\THEMONTH] \ordinal{DAY}, \THEYEAR}
  \usvardate
  \newcommand{\notes@lecturename}{Lecture}
  \newcommand{\notes@theoremname}{theorem}
  \newcommand{\notes@propositionname}{proposition}
  \newcommand{\notes@lemmaname}{lemma}
  \newcommand{\notes@corollaryname}{corollary}
  \newcommand{\notes@definitionname}{definition}
  \newcommand{\notes@examplename}{example}
  \newcommand{\notes@exercisename}{exercise}
  \newcommand{\notes@remarkname}{remark}
  \newcommand{\notes@factname}{fact}
  \newcommand{\notes@problemname}{problem}
  \newcommand{\notes@conjecturename}{conjecture}
  \newcommand{\notes@claimname}{claim}
  \newcommand{\notes@notationname}{notation}
  \newcommand{\notes@morelinkname}{For more visit}}
  %
\DeclareOption{italian}{
  \newcommand{\notes@lang}{italian}
  \dateitalian
  \newcommand{\notes@lecturename}{Lezione}
  \newcommand{\notes@theoremname}{teorema}
  \newcommand{\notes@propositionname}{proposizione}
  \newcommand{\notes@lemmaname}{lemma}
  \newcommand{\notes@corollaryname}{corollario}
  \newcommand{\notes@definitionname}{definizione}
  \newcommand{\notes@examplename}{esempio}
  \newcommand{\notes@exercisename}{esercizio}
  \newcommand{\notes@remarkname}{osservazione}
  \newcommand{\notes@factname}{fatto}
  \newcommand{\notes@problemname}{problema}
  \newcommand{\notes@conjecturename}{congettura}
  \newcommand{\notes@claimname}{ipotesi}
  \newcommand{\notes@notationname}{notazione}
  \newcommand{\notes@morelinkname}{Per ulteriori informazioni visita}}
  %
\DeclareOption{french}{
  \newcommand{\notes@lang}{french}
  \datefrench
  \newcommand{\notes@lecturename}{Conf\'{e}rence}
  \newcommand{\notes@theoremname}{th\'{e}or\`{e}m}
  \newcommand{\notes@propositionname}{proposition}
  \newcommand{\notes@lemmaname}{lemme}
  \newcommand{\notes@corollaryname}{corollaire}
  \newcommand{\notes@definitionname}{d\'{e}finition}
  \newcommand{\notes@examplename}{exemple}
  \newcommand{\notes@exercisename}{exercise}
  \newcommand{\notes@remarkname}{remarque}
  \newcommand{\notes@factname}{fait}
  \newcommand{\notes@problemname}{probl\`{e}me}
  \newcommand{\notes@conjecturename}{conjecture}
  \newcommand{\notes@claimname}{d\'{e}claration}
  \newcommand{\notes@notationname}{notation}
  \newcommand{\notes@morelinkname}{Pour plus d'informations visitez}}
  %
\DeclareOption{russian}{
	\newcommand{\notes@lang}{russian}
	\newcommand{\notes@lecturename}{Лекция}
	\newcommand{\notes@theoremname}{Теорема}
	\newcommand{\notes@propositionname}{Предложение}
	\newcommand{\notes@lemmaname}{Лемма}
	\newcommand{\notes@corollaryname}{Следствие}
	\newcommand{\notes@definitionname}{Определение}
	\newcommand{\notes@examplename}{Пример}
	\newcommand{\notes@exercisename}{Упражнение}
	\newcommand{\notes@remarkname}{Замечание}
	\newcommand{\notes@factname}{Факт}
	\newcommand{\notes@problemname}{Задача}
	\newcommand{\notes@conjecturename}{Догадка}
	\newcommand{\notes@claimname}{Утверждение}
	\newcommand{\notes@notationname}{Обозначение}
	\newcommand{\notes@morelinkname}{Подробности здесь}}

%
% Header (headertitle,headersection,headersubsection, headerno)
%   headertitle displays speaker on left and title on right.
%   headersection displays section on left and right
%   headersubsection displays section on left and subsection on right
%   headerno does not display headers
\DeclareOption{headertitle}{\newcommand{\notes@header}{title}}
\DeclareOption{headersection}{\newcommand{\notes@header}{section}}
\DeclareOption{headersubsection}{\newcommand{\notes@header}{subsection}}
\DeclareOption{headerno}{\newcommand{\notes@header}{no}}
% Theorem (theoremnosection,theoremsection,theoremsubsection)
%   theoremnosection numbers theorem continuously in the document
%   theoremsection reset theorem numbering on section changes
%   theoremsubsection reset theorem numbering on subsection changes
\DeclareOption{theoremnosection}{\newcommand{\notes@theorem}{nosection}}
\DeclareOption{theoremsection}{\newcommand{\notes@theorem}{section}}
\DeclareOption{theoremsubsection}{\newcommand{\notes@theorem}{subsection}}
% Clear double page before sections (cleardoublepage,nocleardoublepage)
\DeclareOption{cleardoublepage}{\newcommand{\notes@cleardoublepage}{true}}
\DeclareOption{nocleardoublepage}{\newcommand{\notes@cleardoublepage}{false}}
% Number of sides (oneside,twoside)
\DeclareOption{oneside}{\newcommand{\notes@side}{oneside}}
\DeclareOption{twoside}{\newcommand{\notes@side}{twoside}}
% Number of columns (onecolumn,twocolumn)
\DeclareOption{onecolumn}{\newcommand{\notes@columns}{onecolumn}}
\DeclareOption{twocolumn}{\newcommand{\notes@columns}{twocolumn}}
% Type (course, seminar, talk)
%   Course is a medium-length document (tens of pages)
%     structured in sections, subsections and optionally paragraphs;
%     if subsections are short, one can ask for headersection not to display
%     subsections in headers; if subsections are long, one can ask for
%     theoremsubsection to number theorems inside subsection. It has lectures
%     number as a margin note.
%   Seminar is a short unstructured document (maybe with paragraph or small
%     subsections).
%   Talk is to prepare a speech - with the same structure as seminar, but is
%     designed to write only the things one will write at the blackboard.
\DeclareOption{course}{%
  \newcommand{\notes@type}{course}%
  \ifthenelse{\isundefined{\notes@header}}{\ExecuteOptions{headersubsection}}{}%
  \ifthenelse{\isundefined{\notes@theorem}}{\ExecuteOptions{theoremsection}}{}%
  \ifthenelse{\isundefined{\notes@cleardoublepage}}{\ExecuteOptions{nocleardoublepage}}{}%
  \ifthenelse{\isundefined{\notes@columns}}{\ExecuteOptions{onecolumn}}{}%
  \ifthenelse{\isundefined{\notes@side}}{\ExecuteOptions{twoside}}{}%
}
\DeclareOption{seminar}{%
  \newcommand{\notes@type}{seminar}%
  \ifthenelse{\isundefined{\notes@header}}{\ExecuteOptions{headertitle}}{}%
  \ifthenelse{\isundefined{\notes@theorem}}{\ExecuteOptions{theoremnosection}}{}%
  \ifthenelse{\isundefined{\notes@cleardoublepage}}{\ExecuteOptions{nocleardoublepage}}{}%
  \ifthenelse{\isundefined{\notes@columns}}{\ExecuteOptions{onecolumn}}{}%
  \ifthenelse{\isundefined{\notes@side}}{\ExecuteOptions{twoside}}{}%
}
\DeclareOption{talk}{%
  \newcommand{\notes@type}{talk}%
  \ifthenelse{\isundefined{\notes@header}}{\ExecuteOptions{headerno}}{}%
  \ifthenelse{\isundefined{\notes@theorem}}{\ExecuteOptions{theoremnosection}}{}%
  \ifthenelse{\isundefined{\notes@cleardoublepage}}{\ExecuteOptions{nocleardoublepage}}{}
  \ifthenelse{\isundefined{\notes@columns}}{\ExecuteOptions{twocolumn}}{}%
  \ifthenelse{\isundefined{\notes@side}}{\ExecuteOptions{oneside}}{}%
  \hbadness=10000%
  \vbadness=10000%
  \tolerance=10000%
}

\ProcessOptions
%%% Load default class
\LoadClass[a4paper,11pt,\notes@columns,\notes@side]{article}%

%%% Load default arguments if empty
\ifthenelse{\isundefined{\notes@type}}{\ExecuteOptions{course}}{}
\ifthenelse{\isundefined{\notes@lang}}{\ExecuteOptions{english}}{}
\ifthenelse{\isundefined{\notes@columns}}{\ExecuteOptions{onecolumn}}{}
\ifthenelse{\isundefined{\notes@side}}{\ExecuteOptions{oneside}}{}

%%% Common macroes
\RequirePackage[\notes@lang]{babel}
\RequirePackage[colorlinks,linkcolor=black,urlcolor=black,citecolor=black]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{tikz}
\usetikzlibrary{arrows}
\usetikzlibrary{patterns}
\usetikzlibrary{shapes}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[intlimits]{amsmath}
\ifthenelse{\equal{\notes@lang}{russian}}{\RequirePackage[T1,T2A]{fontenc}}{} % Required for Cyrillic support
% \RequirePackage[osf,sc]{mathpazo} % Uncomment for Palatino and comment out the next line
\RequirePackage[frenchstyle,widermath,narrowiints,fullsumlimits,fullintlimits]{kpfonts} % Comment out and uncomment the previous line for Palatino
\linespread{1.05}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{amsxtra}
\RequirePackage{amssymb}
\RequirePackage{mathdots}
\RequirePackage{mathrsfs}
\RequirePackage{microtype}
\RequirePackage{stmaryrd}
\RequirePackage{titlesec}
\newcommand{\contentsfinish}{}
\RequirePackage[titles]{tocloft}
\RequirePackage{textcase}
\RequirePackage{setspace}
\RequirePackage{xfrac}
\RequirePackage{mathtools}
\RequirePackage{faktor}
\RequirePackage{cancel}
\RequirePackage{mparhack}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage[fixlanguage]{babelbib}
\RequirePackage{commons}
\RequirePackage{csquotes}
\addtolength{\jot}{0.5em} %Add row spacing to align environment
\RequirePackage[verbose,a4paper,top=1.45in,bottom=1.35in,left=1.15in,right=2in,asymmetric,twoside]{geometry}

%\SetUnicodeOption{mathletters}
%\SetUnicodeOption{autogenerated}

\delimitershortfall=5pt

\frenchspacing
\DeclareRobustCommand{\smallcaps}[1]{\scshape{#1}}%\MakeTextLowercase{#1}}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}
    \vspace*{\fill}
    \vspace{\fill}
    \thispagestyle{empty}
    \newpage
    \if@twocolumn\hbox{}\newpage\fi\fi\fi}
\newcommand{\margintext}[1]{\marginpar{\setstretch{0.7}\itshape{\footnotesize{#1}}}}
\newcommand{\separator}{\begin{center}\rule{\columnwidth}{\arrayrulewidth}\end{center}}
\newcommand{\tosay}[1]{\begin{center}\text{\fbox{\scriptsize{#1}}}\end{center}}
\newcounter{notes@lecture}
\newcommand{\lecture}[4][]{%
  \addtocounter{notes@lecture}{1}%
  \newdate{@datelecture#2#3#4}{#2}{#3}{#4}%
  \margintext{\notes@lecturename{}\ \arabic{notes@lecture} \ifthenelse{\equal{#1}{}}{}{\ (#1)}\\ \displaydate{@datelecture#2#3#4}}%
}
\newcommand{\TODO}{\margintext{TODO}}%

%%% Theorems and sections style
\swapnumbers
\newtheoremstyle{plainsc}{10pt}{10pt}{\normalfont\itshape}{}{\normalfont\smallcaps}{.}{.5em}{}
\newtheoremstyle{definitionsc}{10pt}{10pt}{\normalfont}{}{\normalfont\smallcaps}{.}{.5em}{}
\newtheoremstyle{remarksc}{10pt}{10pt}{\normalfont}{}{\normalfont\smallcaps}{.}{.5em}{}

\theoremstyle{plainsc}
\ifthenelse{\equal{\notes@theorem}{nosection}}{\newtheorem{theorem}{\notes@theoremname}}{}
\ifthenelse{\equal{\notes@theorem}{section}}{\newtheorem{theorem}{\notes@theoremname}[section]}{}
\ifthenelse{\equal{\notes@theorem}{subsection}}{\newtheorem{theorem}{\notes@theoremname}[subsection]}{}
\newtheorem{proposition}[theorem]{\notes@propositionname}
\newtheorem{lemma}[theorem]{\notes@lemmaname}
\newtheorem{corollary}[theorem]{\notes@corollaryname}
\newtheorem{conjecture}[theorem]{\notes@conjecturename}
\newtheorem{claim}[theorem]{\notes@claimname}
\theoremstyle{definitionsc}
\newtheorem{definition}[theorem]{\notes@definitionname}
\theoremstyle{remarksc}
\newtheorem{example}[theorem]{\notes@examplename}
\newtheorem{exercise}[theorem]{\notes@exercisename}
\newtheorem{remark}[theorem]{\notes@remarkname}
\newtheorem{fact}[theorem]{\notes@factname}
\newtheorem{problem}[theorem]{\notes@problemname}
\newtheorem{notation}[theorem]{\notes@notationname}

\newcommand{\notes@opensection}{}
\ifthenelse{\equal{\notes@cleardoublepage}{true}}{\renewcommand{\notes@opensection}{\cleardoublepage\thispagestyle{plain}}}{}
\titleformat{\subsection}{\relax\centering}{\thesubsection}{1em}{\large\itshape}
\titleformat{\subsubsection}{\relax\centering}{\thesubsubsection}{1em}{\normalsize}
\titleformat{\paragraph}[runin]{}{}{}{\normalsize\smallcaps}
\PassOptionsToPackage{letterspace=1000}{microtype}
\titleformat{\section}{\relax\centering\large\lsstyle}{\small{\thesection}}{0.5em}{\otherscshape\MakeLowercase}
\PassOptionsToPackage{letterspace=0}{microtype}

\renewcommand{\cftsecfont}{\normalfont}%
\renewcommand{\cftsecpagefont}{\normalfont}%
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
%\ifthenelse{\equal{\notes@type}{seminar}}{\renewcommand{\thesubsection}{\arabic{subsection}}}{}  
\ifthenelse{\equal{\notes@type}{talk}}{\renewcommand{\thesubsection}{\arabic{subsection}}}{}  

\renewcommand{\descriptionlabel}[1]{\hspace*{\labelsep}\smallcaps{#1}}


%%% Preamble commands (as title, author, ...)
\renewcommand{\date}[3]{\newcommand{\notes@datestartdef}{}\newdate{@date}{#1}{#2}{#3}}
\newcommand{\dateend}[3]{\newcommand{\notes@dateenddef}{}\newdate{@dateend}{#1}{#2}{#3}}
\newcommand{\season}[1]{\newcommand{\notes@season}{#1}}
\newcommand{\ccode}[1]{\newcommand{\notes@ccode}{#1}}
\newcommand{\email}[1]{\newcommand{\notes@email}{#1}}
\newcommand{\spemail}[1]{\newcommand{\notes@spemail}{#1}}
\newcommand{\speaker}[1]{\newcommand{\notes@speaker}{#1}}
\newcommand{\subtitle}[1]{\newcommand{\notes@subtitle}{#1}}
\newcommand{\shorttitle}[1]{\newcommand{\notes@shorttitle}{#1}}
\newcommand{\flag}[1]{\newcommand{\notes@flag}{#1}}
\newcommand{\place}[1]{\newcommand{\notes@place}{#1}}
\newcommand{\conference}[1]{\newcommand{\notes@conference}{#1}}
\newcommand{\subject}[1]{\newcommand{\notes@subject}{#1}}
\newcommand{\attn}[1]{\newcommand{\notes@attn}{#1}}
\newcommand{\morelink}[1]{\newcommand{\notes@morelink}{#1}}

\AtBeginDocument{%
% Better spacing for the equation environment
\let\oldequation=\equation%
\let\endoldequation=\endequation%
\renewenvironment{equation}{\vspace{0ex}\begin{oldequation}}{\vspace{2ex}\end{oldequation}}%
% Better spacing for $$ ... $$ and align* environments
\setlength{\abovedisplayskip}{2ex}%
\setlength{\abovedisplayshortskip}{0ex}%
\setlength{\belowdisplayskip}{2ex}%
\setlength{\belowdisplayshortskip}{2ex}%
% Redefine line break command, add newline and begin commands
\renewcommand{\\}{\par\vskip1.5ex\noindent}%
\newcommand{\nl}{\par\noindent}%
\newcommand{\runin}[1]{\textls[50]{\otherscshape #1}}
% Setting up the two-column talk style
  \ifthenelse{\equal{\notes@columns}{twocolumn}}
             {%
               \setlength{\abovedisplayskip}{0mm}%
               \setlength{\belowdisplayskip}{0mm}%
               \setlength{\parskip}{0mm}%
               \setlength{\topsep}{0mm}%
             }{}%
  \pagestyle{fancy}
  \ifthenelse{\equal{\notes@header}{title}}%
             {%
               \renewcommand{\sectionmark}[1]{}%
               \renewcommand{\subsectionmark}[1]{}%
             }{}
  \ifthenelse{\equal{\notes@header}{section}}%
             {%
               \renewcommand{\sectionmark}[1]{\markboth{{\footnotesize\thesection}.\ \smallcaps{#1}}{\thesection.\ \smallcaps{#1}}}%
               \renewcommand{\subsectionmark}[1]{}%
             }{}
  \ifthenelse{\equal{\notes@header}{subsection}}%
             {
               \renewcommand{\sectionmark}[1]{\markboth{{\scriptsize\thesection}.\ \smallcaps{#1}}{}}%\thesection.\ \smallcaps{#1}}}
               \renewcommand{\subsectionmark}[1]{\markright{{\scriptsize\thesubsection}.\ \smallcaps{#1}}}%
             }{}
  \fancyhf{}
  \ifthenelse{\equal{\notes@header}{title}}{%
  \ifthenelse{\isundefined{\notes@ccode}}{}{%
  \fancyhead[RE]{\protect\MakeUppercase{\footnotesize\textls[50]{\notes@ccode}}}
  }%
    \ifthenelse{\isundefined{\notes@shorttitle}}{%
      \fancyhead[LE]{\smallcaps\@title}}{%
      \fancyhead[LE]{\smallcaps\protect\MakeLowercase{\protect\textls[70]{\notes@shorttitle}}}}
    \ifthenelse{\isundefined{\notes@speaker}}{%
      \fancyhead[RO]{\smallcaps\protect\MakeLowercase{\protect\textls[70]{\@author}}}}{%
      \fancyhead[RO]{\smallcaps\protect\MakeLowercase{\protect\textls[70]{\notes@speaker}}}}
  }
             {
               \fancyhead[LE]{\smallcaps\protect\MakeLowercase{\protect\textls[70]{\leftmark}}}
               \fancyhead[RO]{\smallcaps\protect\MakeLowercase{\protect\textls[70]{\rightmark}}}
             }
  \fancyfoot[RO,LE]{\smallcaps\thepage}
  \ifthenelse{\equal{\notes@header}{no}}%
    {\renewcommand{\headrulewidth}{0pt}%
    \fancyhead[LE]{}%
    \fancyhead[RO]{}%
    }%
    {\renewcommand{\headrulewidth}{0.5pt}}

  \ifthenelse{\isundefined{\notes@subtitle}}{\subtitle{}}{}
  \ifthenelse{\isundefined{\notes@subject}}{\subject{}}{}
  \ifthenelse{\isundefined{\notes@email}}{\email{}}{}
  \ifthenelse{\isundefined{\notes@speaker}}{\speaker{}}{}
  \ifthenelse{\isundefined{\notes@speaker}}{\speaker{}}{}
  \ifthenelse{\isundefined{\notes@spemail}}{\spemail{}}{}
  \ifthenelse{\isundefined{\notes@season}}{\season{}}{}
  \ifthenelse{\isundefined{\notes@flag}}{\flag{}}{}
  %\ifthenelse{\isundefined{\notes@morelink}}{\morelink{}}{}
  \ifthenelse{\isundefined{\notes@conference}}{\conference{}}{}
  \ifthenelse{\isundefined{\notes@place}}{\place{}}{}  
  
  \hypersetup{
    pdftitle={\@title},
    pdfsubject={\notes@subject},
    pdfauthor={\@author},
    pdfkeywords={\notes@speaker{}:\notes@conference{}:\notes@place{}},
  }
  \pdfinfo{/ModDate (D:\pdfdate)}
  \maketitle
  \ifthenelse{\equal{\notes@type}{course}}{\tableofcontents}{}
}

%%% Common structures

\renewcommand\maketitle{\par
  \begingroup
  \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
  \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
  \long\def\@makefntext##1{\parindent 1em\noindent
    \hb@xt@1.8em{%
      \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
  \@maketitle
  \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
}

\renewcommand{\@maketitle}{
  \newpage
  \null
  \vskip 4ex%
  \begin{center}%
    \let \footnote \thanks
    \ifthenelse{\isundefined{\notes@ccode}}{}{%
    \protect\textls[100]{\protect\MakeUppercase{\notes@ccode}} --- %
    }%
    {\large\smallcaps\protect\textls[100]{\protect\MakeUppercase{\@title}}}%
    \ifthenelse{\isundefined{\notes@subtitle}}{}{%
    {\vskip 1.5ex\large\smallcaps\protect\textls[100]{\protect\MakeLowercase{\protect\otherscshape{\notes@subtitle}}}}%
    }%
    {\ifthenelse{\isundefined{\notes@speaker}}{}{%
    \ifthenelse{\equal{\notes@spemail}{}}{%
    {\vskip 1.5ex\normalsize\protect\MakeLowercase{\smallcaps\protect\textls[75]{\protect\otherscshape{\notes@speaker}}}}%
    }{%
    \ifthenelse{\equal{\notes@email}{}}{%
      {\vskip 1.5ex\normalsize\protect\MakeLowercase{\smallcaps\protect\textls[75]{\protect\otherscshape{\notes@speaker}}}}\footnote{\protect\href{mailto:\notes@spemail}{\notes@spemail}}%
      }{%
    {\vskip 1.5ex\normalsize\protect\MakeLowercase{\smallcaps\protect\textls[75]{\protect\otherscshape{\notes@speaker}}}}\footnote{\protect\href{mailto:\notes@spemail}{\notes@spemail} (speaker)}%
    }}%
    \par}}%
    \vskip 1.5em%
    {\large
    \begin{tabular}[t]{c}%
      \ifthenelse{\equal{\notes@email}{}}{%
        {\small\itshape\@author}%
      }{%
      \ifthenelse{\equal{\notes@speaker}{}}{%
      {\small\itshape\@author}\footnote{\href{mailto:\notes@email}{\notes@email}}%
      }{%
        {\small\itshape\@author}\footnote{\href{mailto:\notes@email}{\notes@email} (scribe)}%
      }}%
    \end{tabular}\par}%
    \vskip 2ex%
    \ifthenelse{\equal{\notes@flag}{}}{}%
      {%
        {\small\itshape\notes@flag}%
        \vskip 1ex%
      }%
    \ifthenelse{\equal{\notes@conference}{}}%
    {%
      \ifthenelse{\equal{\notes@place}{}}{}%
      {%
        {\small\itshape\notes@place}%
        \vskip 1ex%
      }%
    }%
    {%
      \ifthenelse{\equal{\notes@place}{}}%
      {%
        {\small\itshape\notes@conference}%
        \vskip 1ex%
      }%
      {%
        {\small\itshape\notes@conference, \notes@place}%
        \vskip 1ex%
      }%
    }
    \ifthenelse{\isundefined{\season}}{% If season not defined
    \ifthenelse{\isundefined{\notes@dateenddef}}{%
    \ifthenelse{\isundefined{\notes@datestartdef}}{}{%
    {\small\itshape\displaydate{@date}}%
    }}{%
    {\small\itshape\displaydate{@date} -- \displaydate{@dateend}}}%
    }
    {% If season is defined
    {\itshape\notes@season}%
    }%
    \ifthenelse{\isundefined{\notes@attn}}{}{\vskip 3ex%
    {\itshape\notes@attn}%
    }%
    \ifthenelse{\isundefined{\notes@morelink}}{}{%
    \let\thefootnote\relax%
    \footnotetext{%
    \notes@morelinkname \ \url{\notes@morelink}.
    }%
    \addtocounter{footnote}{-1}\let\thefootnote\svthefootnote%
    }%
    \vskip 3ex\noindent\rule{1.5cm}{0.4pt}%
  \end{center}%
  \par
  \vskip 2ex
}

\newcommand{\makedefaultsection}[2][true]{
  \ifthenelse{\equal{\notes@type}{course}}{
    \ifthenelse{\equal{#1}{true}}{\addcontentsline{toc}{section}{#2}}{}
    \section*{#2}
    \ifthenelse{\equal{\notes@header}{section}}{\markboth{\smallcaps{#2}}{\smallcaps{#2}}}{}
    \ifthenelse{\equal{\notes@header}{subsection}}{\markboth{\smallcaps{#2}}{}}{}}{}
  \ifthenelse{\equal{\notes@type}{seminar}}{
    \ifthenelse{\equal{#1}{true}}{\addcontentsline{toc}{subsection}{#2}}{}
    \subsection*{#2}
    \ifthenelse{\equal{\notes@header}{subsection}}{\markright{\smallcaps{#2}}}{}}{}
  \ifthenelse{\equal{\notes@type}{talk}}{
    \ifthenelse{\equal{#1}{true}}{\addcontentsline{toc}{subsection}{#2}}{}
    \subsection*{#2}
    \ifthenelse{\equal{\notes@header}{subsection}}{\markright{\smallcaps{#2}}}{}}{}
}

\renewcommand{\tableofcontents}{%
  \makedefaultsection[false]{\contentsname}
  \@starttoc{toc}\vskip 7ex%
}

\renewenvironment{thebibliography}[1]{
  \makedefaultsection{\refname}
  \list{\@biblabel{\@arabic\c@enumiv}}%
       {\settowidth\labelwidth{\@biblabel{#1}}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \@openbib@code
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
       \sloppy
       \clubpenalty4000
       \@clubpenalty \clubpenalty
       \widowpenalty4000%
       \sfcode`\.\@m%
}{
  \def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
