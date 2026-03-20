% Intro Options
\ProvidesClass{peter_resume}[2026/02/23 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}
\setlength{\parindent}{0pt}
\renewcommand{\textbf}[1]{{\bfseries\itshape #1}}

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
\newfontfamily\latomedium[Color=primary, Path = fonts/lato/, BoldFont=Lato-Bol, ItalicFont=Lato-RegIta, BoldItalicFont=Lato-BolIta]{Lato-Reg}
\newfontfamily\fa[Path = fonts/]{FontAwesome.otf}
\newfontfamily\fab[Path = fonts/]{FontAwesomeBrands.otf}

% Name command
\newcommand{\headersep}{%
    \hspace{1em}%
    {\color{headings}\vrule width 0.4pt}%
    \hspace{1em}%
}
\newcommand{\namesection}[3]{
    \noindent\hspace*{-0.1cm}\begin{minipage}[c]{0.33\textwidth}
        \raggedright
        \fontsize{45pt}{45pt}
        \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #1
    \end{minipage}%
    \hspace*{-0.15cm}\begin{minipage}[c]{0.33\textwidth}
        \raggedleft
        \color{subheadings}
        \fontsize{10pt}{16pt}
        \fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #2
    \end{minipage}%
    \hspace*{-0.15cm}\headersep%
    \hspace*{-0.15cm}\begin{minipage}[c]{0.33\textwidth}
        \raggedright
        \color{subheadings}
        \fontsize{10pt}{16pt}
        \fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #3
    \end{minipage}
    \vspace{4pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{9pt}}

% Headings command
\newcommand{\sectiontitle}[1]{%
    \MakeUppercase{#1}%\enspace{\color{primary}\leaders\hrule height 0.5ex depth -0.46ex\hfill\kern0pt}%
}
\titleformat{\section}{
    \color{primary}
    \scshape
    \fontspec[Path = fonts/lato/]{Lato-Lig}
    \fontsize{12pt}{18pt}
    \selectfont
    \raggedright
}{}{0em}{\sectiontitle}

\newcommand{\runsubsection}[1]{
    \color{primary}
    \fontspec[Path = fonts/lato/]{Lato-Bol}
    \fontsize{12pt}{12pt}
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
    \fontspec[Path = fonts/lato/]{Lato-Lig}
    \fontsize{11pt}{11pt}
    \bfseries
    \selectfont {#1} 
    \normalfont
}

% Daterange command
\newcommand{\daterange}[1]{
    \color{primary}
    \raggedright
    \scshape
    \fontspec[Path = fonts/lato/]{Lato-Lig}
    \fontsize{11pt}{12pt}
    \bfseries
    \selectfont {#1 \\} 
    \normalfont
}

% Descriptors command
\newcommand{\descript}[1]{
    \color{headings}
    \raggedright
    \fontspec[Path = fonts/lato/]{Lato-Reg}
    \fontsize{10.5pt}{13pt}
    \selectfont {#1}
    \normalfont
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
    \vspace{-\topsep}
    \begin{itemize}
    \itemsep1pt
    \parskip0pt
    \parsep0pt
    \latomedium\fontsize{10pt}{13pt}\selectfont
}{
    \end{itemize}
    \vspace{-\topsep}
}
