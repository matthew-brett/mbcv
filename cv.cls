\ProvidesClass{cv}

\LoadClass[11pt,letterpaper]{article} % Font size and paper type
\usepackage[parfill]{parskip}
\usepackage{array}
\usepackage{ifthen}
\usepackage{changepage}
\usepackage{needspace}


% Defines the rSection environment for the large sections within the CV
% Indentation trick from
% http://tex.stackexchange.com/questions/35933/indenting-a-whole-paragraph
\newenvironment{cvSection}[1]{ % 1 input argument - section name
  \needspace{4\baselineskip}
  \sectionskip
  \MakeUppercase{\bf #1} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{adjustwidth}{0.5cm}{}
  }
  {\end{adjustwidth}
}

% A subsection of the CV, within a main section.  Extra indentation.
\newenvironment{cvSubSection}[1]{ % 1 input argument - subsection name
    \needspace{3\baselineskip}
    {\em #1}\begin{adjustwidth}{0.5cm}{}
    }
    {\end{adjustwidth}
}

\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
\def\sectionskip{\medskip} % The space after the heading section
