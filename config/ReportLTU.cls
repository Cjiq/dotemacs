% Some basic requirements
\LoadClass{article}
\ProvidesClass{ReportLTU}
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
 \thispagestyle{empty}
  \item\relax}
 \newpage
 {\endlist}

\RequirePackage{kvoptions-patch}
\SetupKeyvalOptions{family=Report,prefix=ReportLTU@}
\DeclareStringOption[Erik]{AuthorFi}
\DeclareStringOption[Lundmark]{AuthorLi}
\DeclareStringOption{AuthorFii}
\DeclareStringOption{AuthorLii}
\DeclareStringOption{AuthorFiii}
\DeclareStringOption{AuthorLiii}
\DeclareStringOption[eriula-4@student.ltu.se]{AuthorMaili}
\DeclareStringOption{AuthorMailii}
\DeclareStringOption{AuthorMailiii}
\DeclareStringOption[Course name]{CourseName}
\DeclareStringOption[Course code]{CourseCode}

\addto{\captionsenglish}{\renewcommand{\contentsname}{Table of Contents}}
\DeclareOption{swedish}{
\addto{\captionsenglish}{\renewcommand{\abstractname}{Sammanfattning}}
\addto{\captionsenglish}{\renewcommand{\figurename}{Figur}}
\addto{\captionsenglish}{\renewcommand{\tablename}{Tabell}}
\addto{\captionsenglish}{\renewcommand{\contentsname}{Innehållsförteckning}}
\addto{\captionsenglish}{\renewcommand{\partname}{Del}}
}

\ProcessOptions\relax
\ProcessKeyvalOptions*


\newenvironment{reporttitlepage}
  {
    \begin{titlepage}

    \newcommand{\HRule}{\rule{\linewidth}{0.5mm}} % Defines a new command for the horizontal lines, change thickness here
    \center % Center everything on the page

    %----------------------------------------------------------------------------------------
    %	HEADING SECTIONS
    %----------------------------------------------------------------------------------------

    \textsc{\LARGE Luleå tekniska universitet}\\[1.5cm] % Name of your university/college
    \textsc{\Large \ReportLTU@CourseName}\\[0.5cm] % Major heading such as course name
    \textsc{\large \ReportLTU@CourseCode}\\[0.5cm] % Minor heading such as course title

    %----------------------------------------------------------------------------------------
    %	TITLE SECTION
    %----------------------------------------------------------------------------------------

    \HRule \\[0.4cm]
    { \huge \bfseries Ombyggnation - Lokstallarna, Kiruna}\\[0.4cm] % Title of your document
    \HRule \\[1.2cm]

    %----------------------------------------------------------------------------------------
    %	AUTHOR SECTION
    %----------------------------------------------------------------------------------------

    \begin{minipage}{0.8\textwidth}
    \begin{flushleft} \large
    \emph{Author:}\\
    \ReportLTU@AuthorFi\ \textsc{\ReportLTU@AuthorLi}
    %% Erik \textsc{Lundmark} % Your name
    \hfill
    \ReportLTU@AuthorMaili\\
    %% eriula-4@student.ltu.se\\
    %% Simon \textsc{Lindberg} % Your name
    \ReportLTU@AuthorFii\ \textsc{\ReportLTU@AuthorLii}
    \hfill
    \ReportLTU@AuthorMailii\\
    %% isoile-4@student.ltu.se\\
    \ReportLTU@AuthorFiii\ \textsc{\ReportLTU@AuthorLiii}
    %% Amelia\textsc{Westman} % Your name
    \hfill
    \ReportLTU@AuthorMailiii\\
    %% amewes-3@student.ltu.se\\
    \end{flushleft}
    \end{minipage}
    \begin{minipage}{0.4\textwidth}
    \begin{flushleft} \large
    \emph{}\\
    \emph{}\\
    \emph{Supervisor:}\\
    Mattias \textsc{Vesterlund}\\ % Supervisor's Name
    \end{flushleft}
    \end{minipage}
    \begin{minipage}{0.4\textwidth}
    \begin{flushright} \large
    \emph{ }\\
    \end{flushright}
    \end{minipage}

    %----------------------------------------------------------------------------------------
    %	DATE SECTION
    %----------------------------------------------------------------------------------------

    \begin{minipage}{0.8\textwidth}
    \begin{flushleft} \large
    \end{flushleft}
    Date preformed: April 13, 2016\\
    Date submitted: \today
    \end{minipage}
    \vspace{1.7em}
    %% {\large \today}\\[2cm] % Date, change the \today to a set date if you want to be precise

    %----------------------------------------------------------------------------------------
    %	LOGO SECTION
    %----------------------------------------------------------------------------------------

    \includegraphics[width=5.5cm]{ltu.jpg}\\ % Include a department/university logo - this will require the graphicx package

    %----------------------------------------------------------------------------------------

    \vfill % Fill the rest of the page with whitespace

    \end{titlepage}

  }



%----------------------------------------------------------------------------------------
% General formats 
%----------------------------------------------------------------------------------------

 % Set spacing between paragraphes
%% \setlength{\parskip}{\baselineskip}
%% \setlength{\parindent}{0em}
%% \setlength{\parskip}{1em}

 % Change spacing
%% \setlength{\belowcaptionskip}{-5pt}

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
%% \titleformat{\chapter}[display]{\normalfont\bfseries}{}{0pt}{\Huge}
%% \titlespacing*{\chapter}{0pt}{-50pt}{40pt}
