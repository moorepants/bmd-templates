%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Class file for the abstract of the Bicycle and Motercycle Dynamics
%% Conference 2023, 18-20 September, Delft University of Technology.
%% Jason K. Moore 2023 revision
%% Ben Smith 10092015 REV 2018 by UNIPD team
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bmd2019a}[2018/08/09 BMD2019 abstract class]
\ProcessOptions\relax

\DeclareOption{11pt}{\OptionNotUsed}
\DeclareOption{12pt}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax

\LoadClass[10pt,a4paper,twoside]{article}

%\RequirePackage[latin1]{inputenc}   % for unix users
\RequirePackage[ansinew]{inputenc}  %  for windows users
%\RequirePackage[aplemac]{inputenc}  % for mac users

\RequirePackage{a4}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm,amsbsy,amsmath}
\RequirePackage{bm}
\RequirePackage{engord}
\RequirePackage{epsfig,vmargin,booktabs}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{latexsym}
\RequirePackage{natbib}
\RequirePackage{tabularx}
\RequirePackage{times}
\RequirePackage{verbatim}
\RequirePackage{fancyhdr}

\setpapersize{A4}  % needs vmargin package
%\setmarginsrb{left}{top}{right}{bottom}{headh1gt}{headsep}{foothgt}{footskip}
\setmarginsrb{12.7mm}{25mm}{12.7mm}{19mm}{18mm}{4mm}{6mm}{10mm}
% headsep:  Distance from bottom of header to the body of text on a page.
% footskip: Distance from bottom of body to the bottom of the footer (the footer is the text at the bottom of each page).

\parindent=0pt
%\parskip0pc
\parskip=2ex

% variable definitions
\def\doi#1{\def\@doi{#1}}\newcommand{\printdoi}{\@doi}
\def\year#1{\def\@year{#1}}\newcommand{\printyear}{\@year}
\def\editor#1{\def\@editor{#1}}\newcommand{\printeditor}{\@editor}
\def\submitteddate#1{\def\@submitteddate{#1}}\newcommand{\printsubmitteddate}{\@submitteddate}
\def\accepteddate#1{\def\@accepteddate{#1}}\newcommand{\printaccepteddate}{\@accepteddate}
\def\publisheddate#1{\def\@publisheddate{#1}}\newcommand{\printpublisheddate}{\@publisheddate}
\def\citation#1{\def\@citation{#1}}\newcommand{\printcitation}{\@citation}
\def\authors#1{\def\@authors{#1}}\newcommand{\printauthors}{\@authors}
\def\issn#1{\def\@issn{#1}}\newcommand{\printissn}{\@issn}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% The LABEL extensions for proofing. J. Kaipio, 4.4.1995
%% CAPTIONS FOR TABLES AND FIGURES
%%
%%  There's a new logical variable \tablecap, which is
%%  set \true by saying \tablecaptrue and \false by
%%  \tablecapfalse. The variable is expanded by saying
%%  \iftablecap. Then there are two separate \caption
%%  macros: \tabcaption and \figcaption, the definition
%%  of which are obvious. The \iftablecap is performed in
%%  \@makecaption, which now contains two different
%%  captioning styles.
%%                               J. Kaipio 3.10.1990.
\newif\iftablecap
\def\tabcaption#1{\tablecaptrue\caption{#1}}
\def\figcaption#1{\tablecapfalse\caption{#1}}
\newlength{\t@bindwidth} \setlength{\t@bindwidth}{1cm}
\newlength{\c@pwidth} \setlength{\c@pwidth}{\hsize}
\addtolength{\c@pwidth}{-2\t@bindwidth}

\long\def\@makecaption#1#2{
   %\vskip 10pt
   \vskip 0.5ex
   \iftablecap                           % Is it a table?
     \setbox\@tempboxa\hbox{#2}
     \ifdim \wd\@tempboxa > \c@pwidth      % IF longer than one line-2cm:
         \hbox to\hsize{\hfil{\sc #1}\hfil}
         \begin{list}{}{\leftmargin\t@bindwidth
             \rightmargin\t@bindwidth}
             {\item \footnotesize  #2}
         \end{list}  
     \else                               % ELSE  center.
         \hbox to\hsize{\hfil{\sc #1}\hfil}
         \hbox to\hsize{\hfil{\footnotesize #2}\hfil}
     \fi                                   % of \ifdim
   \else                                 % Not a table: a picture
     \setbox\@tempboxa\hbox{\small{\bf #1}. #2}
     \ifdim \wd\@tempboxa >\c@pwidth       % IF longer than one line-2cm:
        \begin{list}{}{\leftmargin\t@bindwidth
           \rightmargin\t@bindwidth}
           {\small \item {\bf #1}. #2}
         \end{list}                        % THEN set as ordinary paragraph.
     \else                               % ELSE  center.
         \hbox to\hsize{\hfil\box\@tempboxa\hfil}
     \fi                                   % of \ifdim
   \fi                                   % of \if\tablecaptrue
   }                                     % \@makecaption

%  End of \@makecaption modifications.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SECTIONS 
\renewcommand\section{\@startsection {section}{1}{\z@}{-3.5ex plus -1ex minus-.2ex}{0.2ex}{\normalsize\bf}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% My defs....
% \newcommand{\dd}[1]{\mbox{${\mathrm d}{#1}$}} % d
% \newcommand{\grad}{\operatorname{grad}}
% \newcommand{\dev}{\operatorname{dev}}
% \newcommand{\tr}{\operatorname{tr}}
% \newcommand{\ov}[1]{\mbox{$\bm{#1}$}}                           % vectors
% \newcommand{\om}[1]{\mbox{$\bm{#1}$}}                           % matrices
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\ps@plain}{%
  \renewcommand{\@oddhead}{{\parbox[b]{\textwidth}{
    \begin{minipage}{0.5\textwidth}
      The Evolving Scholar (\printyear)
    \end{minipage}
    \begin{minipage}{0.5\textwidth}
      \scriptsize%
      \raggedleft http://dx.doi.org/\printdoi
    \end{minipage}
    \vspace{1mm}
    \\
    % logos are 1cm in height @ 300 ppi
    \begin{minipage}{0.2\textwidth}
      \includegraphics[height=1cm]{bmd2023-logo-256x118.png}
    \end{minipage}
    \begin{minipage}{0.2\textwidth}
      \includegraphics[height=1cm]{tu-delft-open-logo-294x118.png}
    \end{minipage}
    \begin{minipage}{0.6\textwidth}
      \scriptsize%
      \raggedleft \textbf{Bicycle and Motorcycle Dynamics 2023\\%
      Symposium on the Dynamics and Control of Single Track Vehicles\\%
      18--20 October 2023, Delft University of Technology, The Netherlands}
    \end{minipage}
    \vspace{5mm}
  }}}%
  \renewcommand{\@evenhead}{{\hfill\parbox[b]{\textwidth}{
    \begin{minipage}{0.5\textwidth}
      Evolving Scholar (\printyear)
    \end{minipage}
    \begin{minipage}{0.5\textwidth}
      \scriptsize%
      \raggedleft http://dx.doi.org/\printdoi
    \end{minipage}
    \vspace{5mm}}}}%
  \renewcommand{\@oddfoot}{{\parbox[b]{\textwidth}{
    \scriptsize%
    \copyright \printyear \hspace{1mm} \printauthors \hspace{1mm} published by TU Delft OPEN
    on behalf of the authors.\\%
    ISSN: \printissn
}}}%
  \renewcommand{\@evenfoot}{{\parbox[b]{\textwidth}{
    \scriptsize%
    \raggedright
    \copyright \printyear \hspace{1mm} \printauthors \hspace{1mm} published by TU Delft OPEN
    on behalf of the authors.\\%
    ISSN: \printissn
}}}%
}
\renewcommand{\baselinestretch}{0.91}

\renewcommand{\maketitle}{%
    \twocolumn[%
        \fontsize{50}{60}\fontfamily{phv}\fontseries{b}%
        \fontshape{sl}\selectfont\headlinecolor
        \@title
        \medskip
        ]%
}

\AtBeginDocument{%
  \pagestyle{plain}
}

\endinput
