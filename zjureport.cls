  %% Copyright 2022 Shuduo Liu
  %
  % This work may be distributed and/or modified under the
  % conditions of the LaTeX Project Public License, either version 1.3
  % of this license or (at your option) any later version.
  % The latest version of this license is in
  %   http://www.latex-project.org/lppl.txt
  % and version 1.3 or later is part of all distributions of LaTeX
  % version 2005/12/01 or later.
  %
  % This work has the LPPL maintenance status `maintained'.
  % 
  % The Current Maintainer of this work is Shuduo Liu.
  %
  % This work consists of the file zjureport.cls

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zjureport}[2022/11/28 ZJU report class]

% Preliminary declarations
\LoadClass[12pt, a4paper]{article}
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,amscd}
\RequirePackage{times}              
% Use Times New Roman
\RequirePackage{graphicx}           
% Enhanced support for images
\RequirePackage{float}              
% Improved interface for floating objects
\RequirePackage{booktabs}           
% Publication quality tables
\RequirePackage{xcolor}             
% Driver-independent color extensions
\RequirePackage{geometry}           
% Customize document dimensions
\RequirePackage{fullpage}           
% all 4 margins to be either 1 inch or 1.5 cm
\RequirePackage{comment}            
% Commenting
\RequirePackage{minted}             
% Highlighted source code. Syntax highlighting
\RequirePackage{listings}           
% Typeset programs (programming code) within LaTeX
\RequirePackage{lastpage}           
% Reference last page for Page N of M type footers.
\RequirePackage{fancyhdr}           
% Control of page headers and footers
\RequirePackage{hyperref}           
% Cross-referencing 
\RequirePackage[small,bf]{caption}  
% Captions
\RequirePackage{multicol}
\RequirePackage{tikz}               
% Creating graphic elements
\RequirePackage{circuitikz}         
% Creating circuits
\RequirePackage{verbatim}          
% Print exactly what you type in
\RequirePackage{cite}               
% Citation
\RequirePackage[us]{datetime} 
% Various time format
\RequirePackage{blindtext}
% Generate blind text
\RequirePackage[utf8]{inputenc}
\RequirePackage{array}
\RequirePackage{makecell}
\RequirePackage{tabularx}
\RequirePackage{titlesec}
\RequirePackage[nottoc,notlot,notlof]{tocbibind}

% More declarations
\setlength\parindent{0em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\section}
{\color{ZJU_Blue}\normalfont\Large\bfseries}
{\color{ZJU_Blue}\thesection}{1em}{}
\titleformat{\subsection}
{\color{ZJU_Blue}\normalfont\large\bfseries}
{\color{ZJU_Blue}\thesubsection}{0.5em}{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\hypersetup{
    draft=false,
    final=true,
    colorlinks=true,
    citecolor=ZJU_Blue,
    anchorcolor=yellow,
    linkcolor=ZJU_Blue,
    urlcolor=ZJU_Blue,
    filecolor=green,      
    pdfpagemode=FullScreen,
    bookmarksopen=false
    }
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\lstdefinestyle{Fortran}{
basicstyle=\scriptsize,        % the size of the fonts that are used for the code
  breakatwhitespace=false,         % sets if automatic breaks should only happen at whitespace
  breaklines=false,                 % sets automatic line breaking
  captionpos=b,                    % sets the caption-position to bottom
  commentstyle=\color{mygreen},    % comment style
  extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
  keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
  keywordstyle=\color{blue},       % keyword style
  language=[95]Fortran,                 % the language of the code
  numbers=left,                    % where to put the line-numbers; possible values are (none, left, right)
  numbersep=5pt,                   % how far the line-numbers are from the code
  numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
  rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
  showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
  showstringspaces=false,          % underline spaces within strings only
  showtabs=false,                  % show tabs within strings adding particular underscores
  stepnumber=1,                    % the step between two line-numbers. If it's 1, each line will be numbered
  stringstyle=\color{mymauve},     % string literal style
  tabsize=4,                       % sets default tabsize to 2 spaces
  title=\lstname                   % show the filename of files
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{ZJU_Blue}{HTML}{003F88}
\definecolor{ZJU_LightBlue}{HTML}{74b5ff}
\definecolor{ZJU_Red}{HTML}{b01f24}
% \definecolor{ZJU_LightBlue}{HTML}{1CA9E1}

%\newcommand{\tu}[1]{\textup{#1}}
\newcommand{\tu}[1]{\mathrm{#1}}

\newcommand{\ones}{\mathbf 1}
\newcommand{\reals}{{\mbox{\bf R}}}
\newcommand{\integers}{{\mbox{\bf Z}}}
\newcommand{\symm}{{\mbox{\bf S}}}  % symmetric matrices

\newcommand{\nullspace}{{\mathcal N}}
\newcommand{\range}{{\mathcal R}}
\newcommand{\Rank}{\mathop{\bf Rank}}
\newcommand{\Tr}{\mathop{\bf Tr}}
\newcommand{\diag}{\mathop{\bf diag}}
\newcommand{\card}{\mathop{\bf card}}
\newcommand{\rank}{\mathop{\bf rank}}
\newcommand{\conv}{\mathop{\bf conv}}
\newcommand{\prox}{\mathbf{prox}}

\newcommand{\Expect}{\mathop{\bf E{}}}
\newcommand{\Prob}{\mathop{\bf Prob}}
\newcommand{\Co}{{\mathop {\bf Co}}} % convex hull
\newcommand{\dist}{\mathop{\bf dist{}}}
\newcommand{\argmin}{\mathop{\rm argmin}}
\newcommand{\argmax}{\mathop{\rm argmax}}
\newcommand{\epi}{\mathop{\bf epi}} % epigraph
\newcommand{\Vol}{\mathop{\bf vol}}
\newcommand{\dom}{\mathop{\bf dom}} % domain
\newcommand{\intr}{\mathop{\bf int}}
\newcommand{\sign}{\mathop{\bf sign}}

\newcommand{\cf}{{\it cf.}}
\newcommand{\eg}{{\it e.g.}}
\newcommand{\ie}{{\it i.e.}}
\newcommand{\etc}{{\it etc.}}

\newcommand{\tocpage}{
    \pagenumbering{Roman}   
    \tableofcontents
    \newpage
    \pagenumbering{arabic} 
}


\makeatletter
\newcommand\course[1]{\def\st@course{#1}}
\newcommand\subtitle[1]{\def\st@subtitle{#1}}
\newcommand\instructor[1]{\def\st@instructor{#1}}
\newcommand\department[1]{\def\st@department{#1}}
\usetikzlibrary{tikzmark,calc}


\def\@maketitle{

    \begin{titlepage}

    \noindent\makebox[\linewidth]{
            \begin{tikzpicture}
        \draw[ZJU_LightBlue!20, fill=ZJU_LightBlue!20] (-1,0)rectangle++(1.1\paperwidth,5);
        \node at (1\textwidth,2.5){\includegraphics[height=4.15cm]{ZJU_Logo.eps}};
        \end{tikzpicture}  
        }

    \vspace{60pt}
    
    \begin{flushleft}
            \textbf{\Huge \@title}\\
            \vspace{30pt}

            \ifcsname st@subtitle\endcsname
            \Large \st@subtitle \\
            \vspace{3pt}
            \else
            \fi

            \ifcsname st@course\endcsname
            \Large \st@course \\
            \vspace{20pt}
            \else
            \vspace{17pt}
            \fi
            \large Author: \textit{\@author} \\
    \end{flushleft}

    \ifcsname st@subtitle\endcsname
    \else
    \vspace{23pt}
    \fi

    \ifcsname st@course\endcsname
    \else
    \vspace{30pt}
    \fi

    \ifdefined \st@instructor
    \else
    \vspace{13pt}
    \fi


    \vspace{260pt}

    \begin{flushright}
    \begin{tabular}{ll}
        \ifdefined \st@instructor
        Instructor: &  \textit{\st@instructor} \\
        \else
        % Instructor: &  \textit{\st@instructor} \\
        \fi
        Department: & \st@department \\
        Date: & \@date
    \end{tabular}
    \end{flushright}
    \hrule

    \end{titlepage}
    \newpage
}
\makeatother
