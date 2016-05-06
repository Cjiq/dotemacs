% Some basic requirements
\LoadClass{article}
\ProvidesClass{latex-report}
\NeedsTeXFormat{LaTeX2e}

% Require all packages
\RequirePackage[english]{babel}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage[version=4]{mhchem}
\RequirePackage{booktabs}
\RequirePackage{enumerate}
\RequirePackage{paralist}
\RequirePackage{hyperref}
\RequirePackage{siunitx}
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\RequirePackage{pgfplotstable}
\RequirePackage{pgfplots}
\RequirePackage{titlesec}
\RequirePackage{float}
\RequirePackage{siunitx}
\RequirePackage{subcaption}
\RequirePackage{afterpage}
\RequirePackage{parskip}
% Use wordlike margins
\RequirePackage[tmargin=1in,bmargin=1in,lmargin=1.25in,rmargin=1.25in]{geometry}

% Handle hyperlinks
\hypersetup{
  colorlinks,
  linkcolor={black},
  citecolor={black},
  urlcolor={black}
}

\renewenvironment{abstract}
 {\small
  \begin{center}
  \bfseries \abstractname\vspace{-.5em}\vspace{0pt}
  \end{center}
  \list{}{
    \setlength{\leftmargin}{.5cm}%
    \setlength{\rightmargin}{\leftmargin}%
  }%
  \item\relax}
 {\endlist}

%----------------------------------------------------------------------------------------
% General formats 
%----------------------------------------------------------------------------------------

 % Set spacing between paragraphes
\setlength{\parskip}{\baselineskip}
\setlength{\parindent}{0em}
\setlength{\parskip}{1em}

 % Change spacing
\setlength{\belowcaptionskip}{-5pt}

 % Rename titles etc
%% \addto{\captionsenglish}{\renewcommand{\abstractname}{Sammanfattning}}
%% \addto{\captionsenglish}{\renewcommand{\figurename}{Figur}}
%% \addto{\captionsenglish}{\renewcommand{\tablename}{Tabell}}
%% \addto{\captionsenglish}{\renewcommand{\contentsname}{Innehållsförteckning}}
%% \addto{\captionsenglish}{\renewcommand{\partname}{Del}}
%----------------------------------------------------------------------------------------
% Format Table of Contents
%----------------------------------------------------------------------------------------
%% \setlength{\cftbeforetoctitleskip}{-4em}
%% \setlength{\cftbeforepartskip}{0.3em}
%% \renewcommand\cftpartafterpnum{\vskip-0.5em}
%% \renewcommand\cftsecafterpnum{\vskip-0.1em}
%% \renewcommand\cftchapafterpnum{\vskip0em}
%----------------------------------------------------------------------------------------
% Format Chapter Titles
%----------------------------------------------------------------------------------------
\titleformat{\chapter}[display]{\normalfont\bfseries}{}{0pt}{\Huge}
\titlespacing*{\chapter}{0pt}{-50pt}{40pt}
