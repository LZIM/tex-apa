# tex-apa
This is a LaTeX class that mimics the official APA 2010 style. Simply include the ```.cls``` file in your folder, and look at my ```apa_test.tex``` template to see how it works (it's easy, I promise!). For any issues with LaTeX google is a great resource, the only thing I have to add is that the ```\citeA``` command is added by the package that make the citations APA-style. The result is that the author is referenced automatically with the year(/and page) bracketed behind it.

I will include two styles, based on the 2010 manual. Both are the same in terms of the fields you can fill in (Author etc.), but the header style and cover page is slightly different. I entered the standard fields for a paper for a course, plus an additional field for how the work was divided, or the wordcount, or whatever you need. It can be as many lines as you want, just use ```\break``` to get a new line in that field!

# Support

You probably know how to use LaTeX if you use this (I will include a small intro if you are new to it, it is easy), but if you have any questions just enter it in the issues-category on the GitHub repository (where you downloaded it from). I can totally imagine something breaks, since the class file is not the most organized thing ever, but it should also be an easy fix.

# Intro to LaTeX

LaTeX is a typesetting program that is mostly used in the sciences. The great thing is that the layout of the document is automatically generated, according to instructions by the user. You need two things to use LaTeX: a compiler that converts the plain text to a fancy PDF. and an environment to type in. Luckily, there is a website that does it all for you! Go to [overleaf](https://www.overleaf.com), start a new project, and upload the files from here in it!

If you are stubborn like me, and refuse to write in your browser, you can also do this on your laptop/desktop. For Windows, the compiler is MikTex, so get that first. A good writing environment is TexStudio for Windows. On Linux, just ```apt-get install texlive-base``` or something like that. You know what to do, you computer-expert you. Texlive is pretty good to work in. For iOS there is TexStudio, I think, and there is a compiler that is probably called MacTex, considering how they name stuff/

Generally, a LaTeX document consists of some commands that tell the computer how to do the layout, followed by your entire paper. The paper is written between the ```\begin{document}``` and ```\end{document}```. For normal text you don't have to do anything, you just type. Chapter headers are created by writing ```\section{TITLE}```, or ```\section*{TITLE}``` if you don't want a chapter number. Bold text is done by writing ```\textbf{TEXT}``` and italics by ```\textit{TEXT}```, there should also be buttons in your writing environment for stuff like this. I will create a cheatsheet for common LaTeX commands below, that you will need to write a paper.

The real strength of LaTeX is writing math equations. If you want to do this in a line, write between dollar signs, so```$e = m c^2$```. This is really nice for p-values and null/alternative hypotheses, for example. If you want to write a dollar sign in your text, put a backslash in front of it. The same goes for a percentage sign, which is used to make comments: everything that follows a percentage sign in a line is not printed in the PDF. To make a seperate equation, with a number, write:

```
\begin{equation}
e = m c^2
\label{eq:einstein}
\end{equation}
```

The label is meant for references in your text, just type ```Equation~/ref{eq:einstein}```, and it will automatically refer to the right equation. You can label anything, so also tables, figures, and chapters/subchapters. It is pretty cool, and if you include the package hyperref you can even make these references clickable links that bring you to the image. To do this, type ```\usepackage{hyperref}``` at the start of you document before the ```\begin{document}``` line. Cool!

Finally, LaTeX is amazing for doing your bibliography. LaTeX uses a format called BibTex (names are not their strongest suit) to do references. The great thing is that this format is available on google scholar, so you can just copy paste this! Once you have the BibTex, you can make any bibliography style you want with the press of a button. I made it so that you can just copy paste these google scholar BibTex entries into a special section of your LaTeX document, LaTeX will handle the rest from there. Citing is also easy: to cite between brackets, type ```\cite[pagenumber]{label}```. The label you define in your BibTex entry, but google scholar fills one in for you, so just use that. To write "Author (year)" in your text, you can do ```\citeA[pagenumber]{label}``` instead. That's it, nothing more to do, no easybib and copypasting.

One word of warning is that LaTeX can have a mind of its own where images and tables go. To tell LaTeX to shut up and just put it exactly where you put it, type ```\begin{figure}[H]``` instead of just ```\begin{figure}```.

# LaTeX cheat sheet

In general, I included examples of a table in APA style (so full pagewidth) in the example document, as well as an example image. There are some small thing, like the following.

## A list (nice for listing hypotheses)
```
\begin{itemize}
\item Something
\item Something
\end{itemize}
```

## Make the title page
```
\maketitle
```

## Make a line of math without a number

```
\[
e = m c^2
\]
```

## Make a basic equation
```
\begin{equation}
e^2 = \sum_{n=1}^\infty (x_n - \hat{x_n}) + \frac{1}{2}
\end{equation}
```

## Write a url
```
\url{https://www.google.com}
```

## Make a paragraph indented/not indented
```\indent``` and ```\noindent```

## Two plots next to each other

Too lazy now, google it, it is really easy. It comes down to using the subfigure package.
