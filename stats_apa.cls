\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stats_apa}[2016/05/05 Class providing APA format for stats classes]
\LoadClass[12pt]{article}

\RequirePackage[tmargin=1in,bmargin=1in,lmargin=1.25in,rmargin=1.25in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{mathptmx}
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

\titleformat{\subsection}[hang]{\bfseries\centering}{}{1em}{}

\DeclareCaptionLabelSeparator{apasep}{\\}
\captionsetup[figure]{labelfont=it, labelsep=apasep, singlelinecheck=false}
\captionsetup[table]{labelfont=it, labelsep=apasep, singlelinecheck=false}

\newcommand{\resetHeadWidth}{\fancy@setoffs}
\resetHeadWidth
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyhead{\normalfont}
\rhead{\normalfont \MakeUppercase{\@shorttitle} \thepage}

\newcommand{\headlinecolor}{\normalcolor}

\def\@university{no university}
\newcommand{\university}[1]{
  \def\@university{#1}
}
\def\@course{no course}
\newcommand{\course}[1]{
  \def\@course{#1}
}
\def\@instructor{}
\newcommand{\instructor}[1]{
  \def\@instructor{#1}
}
\def\@additional{}
\newcommand{\additional}[1]{
  \def\@additional{#1}
}
\def\@wordcount{}
\newcommand{\wordcount}[1]{
  \def\@wordcount{#1}
}
\def\@shorttitle{no header title}
\newcommand{\shorttitle}[1]{
  \def\@shorttitle{#1}
}

\renewcommand{\maketitle}{%
	%\thispagestyle{empty}
	\fontsize{12}{12}\fontfamily{mathptmx}%
    \fontshape{sl}\selectfont\headlinecolor
    
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
    \@additional\\
    \@wordcount\\
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
    {1ex plus .2ex}{\large\bfseries\slshape\headlinecolor\center}%
}
 
\renewcommand{\normalsize}{\fontsize{12}{12}\fontfamily{mathptmx}}
\linespread{1.5}