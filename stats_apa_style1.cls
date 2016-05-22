\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stats_apa}[2016/05/05 Class providing APA format for stats classes]
\LoadClass[12pt]{article}

\RequirePackage{lipsum}
\RequirePackage[tmargin=1in,bmargin=1in,lmargin=1.25in,rmargin=1.25in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{pslatex}
\RequirePackage{fancyhdr}
\RequirePackage{indentfirst}
\RequirePackage{filecontents}
\RequirePackage[english]{babel}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{apacite}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{listings}
\RequirePackage{setspace}
\RequirePackage{titlesec}

\addto{\captionsenglish}{\renewcommand{\abstractname}{\textnormal{Abstract}}}

\titleformat{\subsection}[hang]{\bfseries\centering}{}{1em}{}

\DeclareCaptionLabelSeparator{apasep}{\\}
\captionsetup[figure]{textfont=it, labelsep=apasep, singlelinecheck=false}
\captionsetup[table]{textfont=it, labelsep=apasep, singlelinecheck=false}

\setlength{\headheight}{18pt}
\newcommand{\resetHeadWidth}{\fancy@setoffs}
\resetHeadWidth
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyhead{\normalfont}
\rhead{\normalfont \@shorttitle \thepage}

\newcommand{\headlinecolor}{\normalcolor}

\def\@university{no university}
\newcommand{\university}[1]{
  \def\@university{#1}
}
\def\@course{no course}
\newcommand{\course}[1]{
  \def\@course{#1}
}
\def\@instructor{no instructor}
\newcommand{\instructor}[1]{
  \def\@instructor{#1}
}
\def\@additional{}
\newcommand{\additional}[1]{
  \def\@additional{#1}
}
\def\@shorttitle{no running head}
\newcommand{\shorttitle}[1]{
  \def\@shorttitle{#1}
}

\renewcommand{\maketitle}{%
  %\thispagestyle{empty}
  \fontsize{12}{12}%
    \selectfont\headlinecolor
    
  \begin{center}
  \topskip0pt
  \vspace*{\fill}
    \@title\\
    \vspace*{\fill}
    \@author\\
    \@course\\
    \@instructor\\
    \@university\\
    \@date\\
    \@additional
    \end{center}
    \newpage
}
 
\newcounter{mysection}
\renewcommand{\section}{%
  \ifnum\value{mysection}=0
  \begin{center}
  \MakeUppercase{\@title}\\
  \end{center}
  \fi
  \addtocounter{mysection}{1}
  \@startsection
    {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
    {1ex plus .2ex}{\headlinecolor\center}%
}
 
\renewcommand{\normalsize}{\fontsize{12}{12}}
\linespread{1.5}