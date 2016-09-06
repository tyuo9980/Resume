% Intro Options
\ProvidesClass{peter_resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=2.8cm, vmargin=1.4cm]{geometry}
\usepackage{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[
Color=primary, 
Path = fonts/lato/,
BoldItalicFont=Lato-RegIta,
BoldFont=Lato-Reg,
ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newfontfamily\fa{FontAwesome.otf}

% Name command
\newcommand{\namesection}[2]{
    \centering{
        \fontsize{35pt}{50pt}
        \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #1
    } \\[5pt]
    \centering{
        \color{headings}
        \fontsize{11pt}{14pt}
        \fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #2
    }
    \vspace{-5pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{
    \color{primary}
    \scshape
    \fontspec[Path = fonts/lato/]{Lato-Bol}
    \fontsize{12pt}{18pt}
    \selectfont
    \raggedright
    \uppercase
}
{}{0em}{}

\newcommand{\runsubsection}[1]{
    \color{primary}
    \fontspec[Path = fonts/lato/]{Lato-Lig}
    \fontsize{10pt}{11pt}
    \selectfont
    \bfseries
    \uppercase{#1}
    \normalfont
}

% Location command
\newcommand{\location}[1]{
    \color{subheadings}
    \raggedright
    \scshape
    \fontspec[Path = fonts/lato/]{Lato-Reg}
    \fontsize{9pt}{12pt}\selectfont {#1 \\} 
    \normalfont
}

% Descriptors command
\newcommand{\descript}[1]{
    \color{headings}
    \raggedright
    \fontspec[Path = fonts/lato/]{Lato-Reg}
    \fontsize{9pt}{11pt}
    \selectfont {#1\\}
    \normalfont
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
    \vspace{-\topsep}
    \begin{itemize}
    \itemsep1pt
    \parskip0pt
    \parsep0pt
}{
    \end{itemize}
    \vspace{-\topsep}
}
