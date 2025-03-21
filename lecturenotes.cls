\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecturenotes}[2025-03-18 v3.2 lecturenotes]
\RequirePackage{ifthen}
\RequirePackage[nodayofweek]{datetime}

%%% Options
% Language (english, usenglish, italian, french, russian, swedish)
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
\DeclareOption{german}{
  \newcommand{\notes@lang}{german}
  \newcommand{\notes@lecturename}{Vorlesung}
  \newcommand{\notes@theoremname}{Theorem}
  \newcommand{\notes@propositionname}{Proposition}
  \newcommand{\notes@lemmaname}{Lemma}
  \newcommand{\notes@corollaryname}{Korollar}
  \newcommand{\notes@definitionname}{Definition}
  \newcommand{\notes@examplename}{Beispiel}
  \newcommand{\notes@exercisename}{\"Ubung}
  \newcommand{\notes@remarkname}{Bemerkung}
  \newcommand{\notes@factname}{Fakt}
  \newcommand{\notes@problemname}{Problem}
  \newcommand{\notes@conjecturename}{Vermutung}
  \newcommand{\notes@claimname}{Behauptung}
  \newcommand{\notes@notationname}{Notation}
  \newcommand{\notes@morelinkname}{F\"ur mehr Information siehe}}
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
\DeclareOption{swedish}{
  \newcommand{\notes@lang}{swedish}
  \newcommand{\notes@lecturename}{F\"{o}reläsning}
  \newcommand{\notes@theoremname}{teorem}
  \newcommand{\notes@propositionname}{sats}
  \newcommand{\notes@lemmaname}{lemma}
  \newcommand{\notes@corollaryname}{korollarium}
  \newcommand{\notes@definitionname}{definition}
  \newcommand{\notes@examplename}{exempel}
  \newcommand{\notes@exercisename}{\"{o}vning}
  \newcommand{\notes@remarkname}{anm\"{a}rkning}
  \newcommand{\notes@factname}{faktum}
  \newcommand{\notes@problemname}{uppgift}
  \newcommand{\notes@conjecturename}{konjektur}
  \newcommand{\notes@claimname}{p\r{a}st\r{a}ende}
  \newcommand{\notes@notationname}{notation}
  \newcommand{\notes@morelinkname}{F\"{o}r mer information bes\"{o}k}}
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
% \RequirePackage[utf8]{inputenc} % Removed as pdflatex is no longer recommended for this package, use lualatex instead
\RequirePackage[intlimits]{amsmath}
% \ifthenelse{\equal{\notes@lang}{russian}}{\RequirePackage[T1,T2A]{fontenc}}{} % Required for Cyrillic support % Removed for LuaLaTeX support, not required per Lua docs
\RequirePackage{amsfonts}
\RequirePackage{amsxtra}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{unicode-math}
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
% \RequirePackage{lecturenotes-styles} % Merged into this class below

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Merged from lecturenotes-styles.sty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% ABBREVIATIONS %%%%%%%%%%%%%%%%%%%%
\newcommand{\pha}{{}_\bullet}
\newcommand{\phb}{{}_\blacktriangle}
\newcommand{\phc}{\blacktriangle}

\newcommand{\dotleq}{\mathrel{\raisebox{1.2ex}{$⋅$}\mkern-13.5mu \leq}}
\renewcommand{\projlim}{\varprojlim}
\renewcommand{\injlim}{\varinjlim}
\newcommand{\dottimes}{\stackrel[\cdot]{\times}}

%\newcommand{\xra}[1]{\xrightarrow{#1}}
\newcommand{\xra}[1]{\, \tikz[baseline] \draw (0pt,3.5pt) -- (7pt,3.5pt); {\raisebox{1.5pt}{\ensuremath{\scriptstyle #1}}} \tikz[baseline] \draw [->] (0pt,3.5pt) -- (7pt,3.5pt); \, }

\let\tempCaption=\caption
\renewcommand{\caption}[1]{\itshape \tempCaption{#1}}

\renewcommand{\obar}[1]{\overline{#1}}
\newcommand{\ubar}[1]{\underline{#1}}

\newcommand{\set}[1]{\left\{#1\right\}}
\newcommand{\pa}[1]{\left(#1\right)}
\newcommand{\ang}[1]{\left<#1\right>}
\newcommand{\bra}[1]{\left[#1\right]}
\newcommand{\abs}[1]{\left|#1\right|}
\newcommand{\norm}[1]{\left\|#1\right\|}

\newcommand{\mat}[1]{\begin{matrix}#1\end{matrix}}
\newcommand{\pmat}[1]{\pa{\mat{#1}}}
\newcommand{\bmat}[1]{\bra{\mat{#1}}}
\newcommand{\sismat}[1]{\left\{\mat{#1}\right.}
\newcommand{\sm}[1]{\begin{smallmatrix}#1\end{smallmatrix}}
\newcommand{\psm}[1]{\pa{\sm{#1}}}
\newcommand{\bsm}[1]{\bra{\sm{#1}}}
\newcommand{\tci}[2]{\set{\,#1 \mid{} #2\,}}
\newcommand{\tcia}[2]{\ang{\,#1 \mid{} #2\,}}
\newcommand{\pfrac}[2]{\pa{\frac{#1}{#2}}}
\newcommand{\bfrac}[2]{\bra{\frac{#1}{#2}}}
\newcommand{\psfrac}[2]{\pa{\sfrac{#1}{#2}}}
\newcommand{\bsfrac}[2]{\bra{\sfrac{#1}{#2}}}
\newcommand{\der}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\pder}[2]{\pfrac{\partial #1}{\partial #2}}
\newcommand{\sder}[2]{\sfrac{\partial #1}{\partial #2}}
\newcommand{\psder}[2]{\psfrac{\partial #1}{\partial #2}}

\newcommand{\leg}[2]{\pfrac{#1}{#2}}
\newcommand{\estdim}[2]{\left[#1 : #2\right]}
\newcommand{\abel}[2]{\left[#1, #2\right]}
\newcommand{\brk}[2]{\left[#1,#2\right]}

%%%%%%%%%%%%%%%%%%%% OPERATORS %%%%%%%%%%%%%%%%%%%%
\DeclareMathOperator{\Schemes}{\mathfrak{Sch}}
\DeclareMathOperator{\AffineSchemes}{\mathfrak{AffSch}}
\DeclareMathOperator{\Sets}{\mathfrak{Sets}}
\DeclareMathOperator{\Groupoids}{\mathfrak{Groupoids}}
\DeclareMathOperator{\TopologicalSpaces}{\mathfrak{Top}}

\DeclareMathOperator{\Alb}{Alb}
\DeclareMathOperator{\Aut}{Aut}
\DeclareMathOperator{\B}{B}
\DeclareMathOperator{\cod}{cod}
\DeclareMathOperator{\de}{d}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\Div}{Div}
\DeclareMathOperator{\Ext}{Ext}
\DeclareMathOperator{\Fix}{Fix}
\DeclareMathOperator{\gen}{g}
\DeclareMathOperator{\GL}{GL}
\DeclareMathOperator{\Hilb}{Hilb}
\DeclareMathOperator{\Ho}{H}
\DeclareMathOperator{\ho}{h}
\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\id}{id}
\DeclareMathOperator{\Image}{Im}
\DeclareMathOperator{\Isom}{Isom}
\DeclareMathOperator{\Mod}{Mod}
\DeclareMathOperator{\Mor}{Mor}
\DeclareMathOperator{\argen}{p_a}
\DeclareMathOperator{\geomgen}{p_g}
\DeclareMathOperator{\Pic}{Pic}
\DeclareMathOperator{\Projection}{Proj}
\DeclareMathOperator{\irr}{q}
\DeclareMathOperator{\res}{res}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\Sing}{Sing}
\DeclareMathOperator{\Spec}{Spec}
\DeclareMathOperator{\Stab}{Stab}
\DeclareMathOperator{\tr}{tr}
\DeclareMathOperator{\Tors}{Tors}
\DeclareMathOperator{\vp}{v.p.}

%%%%%%%%%%%%%%%%%%%% LETTERS %%%%%%%%%%%%%%%%%%%%
\newcommand{\frakM}{\mathfrak{M}}
\newcommand{\frakm}{\mathfrak{m}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% End of lecturenotes-styles.sty
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{csquotes}
\addtolength{\jot}{0.5em} %Add row spacing to align environment
\RequirePackage[frenchstyle,narrowiints,largesmallcaps]{kpfonts-otf} % Comment out and uncomment the line two above for Palatino % fullsumlimits,fullintlimits not supported by kpfonts-otf
\linespread{1.05}
\RequirePackage[verbose,a4paper,top=1.45in,bottom=1.35in,left=1.15in,right=2in,asymmetric,twoside]{geometry}
\setlength\headheight{14pt}

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
\titleformat{\section}{\relax\centering\large\lsstyle}{\small{\thesection}}{0.5em}{\scshape\MakeLowercase}
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
\renewcommand{\\}{\par\vspace{1.5ex}\noindent}%
\newcommand{\nl}{\par\noindent}%
\newcommand{\runin}[1]{\textls[50]{\scshape #1}}
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
  %\ifthenelse{\isundefined{\notes@season}}{\season{}}{} % Commented to fix Issue #8
  \ifthenelse{\isundefined{\notes@flag}}{\flag{}}{}
  %\ifthenelse{\isundefined{\notes@morelink}}{\morelink{}}{}
  \ifthenelse{\isundefined{\notes@conference}}{\conference{}}{}
  \ifthenelse{\isundefined{\notes@place}}{\place{}}{}

  \hypersetup{
    pdftitle={\@title},
    pdfsubject={\notes@subject},
    pdfauthor={\@author},
    pdfkeywords={\notes@speaker{}:\notes@conference{}:\notes@place{}},
    pdfinfo={
      Author={\@author},
      Title={\@title},
      CreationDate={D:\pdfdate},
      Keywords={\notes@speaker{};\notes@conference{};\notes@place{}},
    }
  }
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
    {\vskip 1.5ex\large\smallcaps\protect\textls[100]{\protect\MakeLowercase{\protect\scshape{\notes@subtitle}}}}%
    }%
    {\ifthenelse{\isundefined{\notes@speaker}}{}{%
    \ifthenelse{\equal{\notes@spemail}{}}{%
    {\vskip 1.5ex\normalsize\protect\MakeLowercase{\smallcaps\protect\textls[75]{\protect\scshape{\notes@speaker}}}}%
    }{%
    \ifthenelse{\equal{\notes@email}{}}{%
      {\vskip 1.5ex\normalsize\protect\MakeLowercase{\smallcaps\protect\textls[75]{\protect\scshape{\notes@speaker}}}}\footnote{\protect\href{mailto:\notes@spemail}{\notes@spemail}}%
      }{%
    {\vskip 1.5ex\normalsize\protect\MakeLowercase{\smallcaps\protect\textls[75]{\protect\scshape{\notes@speaker}}}}\footnote{\protect\href{mailto:\notes@spemail}{\notes@spemail} (speaker)}%
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
    \ifthenelse{\isundefined{\notes@season}}{% If season not defined
      \ifthenelse{\isundefined{\notes@dateenddef}}{% If end date not defined
        \ifthenelse{\isundefined{\notes@datestartdef}}{}{% If start date not defined do nothing else
          {\small\itshape\displaydate{@date}}% Display start date
        }%
      }{%
        {\small\itshape\displaydate{@date} -- \displaydate{@dateend}}% Do this if end date and start date are defined
      }%
    }%
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
