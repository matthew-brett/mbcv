\ProvidesClass{cv}

\LoadClass[11pt,letterpaper]{article} % Font size and paper type
\usepackage[parfill]{parskip}
\usepackage{array}
\usepackage{ifthen}
\usepackage{changepage}

% Defines the rSection environment for the large sections within the CV
\newenvironment{cvSection}[1]{ % 1 input argument - section name
  \sectionskip
  \MakeUppercase{\bf #1} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{adjustwidth}{0.5cm}{}
  }
  {\end{adjustwidth}
}

% A subsection within a main section
\newenvironment{cvSubSection}[1]{ % 1 input argument - section name
    {\em #1}\begin{adjustwidth}{0.5cm}{}
    }
    {\end{adjustwidth}
}

\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
\def\sectionskip{\medskip} % The space after the heading section
