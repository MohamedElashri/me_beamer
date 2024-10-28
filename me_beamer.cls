%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% elashri.cls
% Custom beamer class for particle physics presentations
% Author: Mohamed Elashri
% Last Modification: 10/27/2024
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{me_beamer}[ Custom Beamer Class for Particle Physics]

% Base class
\LoadClass[12pt]{beamer}

% Process options
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Theme Configuration (Must come immediately after LoadClass)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usetheme{Darmstadt}
\usefonttheme{professionalfonts}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Required Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{lmodern}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{xcolor}
\RequirePackage{etoolbox}
\RequirePackage{appendixnumberbeamer}
\RequirePackage{caption}
\RequirePackage{listings}
\RequirePackage{textcomp}
\RequirePackage[scaled=0.95]{helvet}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{slashed}  % For Feynman slash notation
\RequirePackage{physics}  % For advanced physics notation

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graphics Path Configuration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\graphicspath{{figures/}}  % Set default graphics path to figures/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Font Configuration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\familydefault}{\sfdefault}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Particle Physics Shortcuts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Shorthand for charge states
\newcommand{\p}{^{+}}
\newcommand{\m}{^{-}}
\newcommand{\z}{^{0}}

% Common particles with specific charge states
\newcommand{\ep}{e\p}
\newcommand{\mup}{\mu\p}
\newcommand{\mum}{\mu\m}
\newcommand{\piz}{\pi\z}
\newcommand{\pip}{\pi\p}
\newcommand{\pim}{\pi\m}
\newcommand{\Kp}{K\p}
\newcommand{\Km}{K\m}
\newcommand{\Kz}{K\z}
\newcommand{\Ks}{K\z_{\text{S}}}
\newcommand{\Kl}{K\z_{\text{L}}}
\newcommand{\Dz}{D\z}
\newcommand{\Dp}{D\p}
\newcommand{\Dm}{D\m}
\newcommand{\Ds}{D_s}
\newcommand{\Bz}{B\z}
\newcommand{\Bp}{B\p}
\newcommand{\Bm}{B\m}
\newcommand{\Bs}{B_s}
\newcommand{\Bc}{B_c}

% Resonances and special states
\newcommand{\jpsi}{J/\psi}
\newcommand{\psip}{\psi(2S)}
\newcommand{\ups}[1]{\Upsilon(#1S)}  % e.g. \ups{1} for Upsilon(1S)
\newcommand{\chic}[1]{\chi_{c#1}}    % e.g. \chic{1} for chi_c1

% Decay chain arrows with optional labels
\newcommand{\To}{\rightarrow}
\newcommand{\TOm}[1]{\xrightarrow{\text{#1}}}  % Arrow with text above
\newcommand{\TOu}[1]{\xrightarrow[\text{#1}]{}}  % Arrow with text below
\newcommand{\TOmu}[2]{\xrightarrow[\text{#2}]{\text{#1}}}  % Text above and below

% Kinematic variables (avoiding duplicates with physics package)
\newcommand{\pT}{p_{\text{T}}}
\newcommand{\ET}{E_{\text{T}}}
\newcommand{\HT}{H_{\text{T}}}
\newcommand{\MET}{\slashed{E}_{\text{T}}}
\newcommand{\drap}{\Delta y}
\newcommand{\dphi}{\Delta\phi}
\newcommand{\dR}{\Delta R}

% Statistical terms with consistent format
\newcommand{\stat}{\text{(stat)}}
\newcommand{\syst}{\text{(syst)}}
\newcommand{\lumierr}{\text{(lumi)}}
\newcommand{\chidof}{\chi^2/\text{d.o.f.}}

% Cross Sections and Luminosity-specific terms
\newcommand{\xsec}{\sigma}
\newcommand{\intlumi}{\mathcal{L}_{\text{int}}}
\newcommand{\ipb}{\,\text{pb}^{-1}}
\newcommand{\ifb}{\,\text{fb}^{-1}}
\newcommand{\iab}{\,\text{ab}^{-1}}

% LHC-specific terms
\newcommand{\RunOne}{\text{Run~1}}
\newcommand{\RunTwo}{\text{Run~2}}
\newcommand{\RunThree}{\text{Run~3}}
\newcommand{\HLLHC}{\text{HL-LHC}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Code Highlighting Configuration
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define colors for syntax highlighting
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.95}

% Default listing style
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    frame=single,
    framerule=0.4pt,
    rulecolor=\color{codegray},
    numbers=left
}

\lstset{style=mystyle}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom Settings for Beamer
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Page Layout Configuration
\setbeamersize{text margin left=0.5cm,text margin right=0.5cm}
\setbeamertemplate{frametitle}[default][center]

% Custom footline
\setbeamertemplate{footline}{
    \leavevmode%
    \hbox{%
        \begin{beamercolorbox}[wd=.3\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
            \usebeamerfont{author in head/foot}\insertshortauthor
        \end{beamercolorbox}%
        \begin{beamercolorbox}[wd=.4\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
            \usebeamerfont{title in head/foot}\insertshorttitle
        \end{beamercolorbox}%
        \begin{beamercolorbox}[wd=.2\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
            \usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}
        \end{beamercolorbox}%
        \begin{beamercolorbox}[wd=.1\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
            \usebeamerfont{date in head/foot}\insertframenumber{} / \inserttotalframenumber\hspace*{2em}
        \end{beamercolorbox}%
    }%
    \vskip0pt%
}

% Logo setup command
\newcommand{\logosetup}[3]{
    \titlegraphic{
        \includegraphics[height=1cm]{#1}\hspace*{1cm}%
        \includegraphics[height=1cm]{#2}\hspace*{1cm}%
        \includegraphics[height=1cm]{#3}%
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Backup Slides Implementation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Counter to track if we're in backup section
\newif\ifinbackup
\inbackupfalse

% Command to start backup slides
\newcommand{\startbackup}{
    \inbackuptrue
    \appendix
    \begin{frame}
        \begin{center}
            \vspace{2cm}  % Add some vertical space
            {\fontsize{30}{36}\selectfont Backup}
        \end{center}
    \end{frame}
}

% Modify frame numbering for backup slides
\makeatletter
\def\insertframenumber{%
    \ifinbackup%
        B-\@arabic\c@framenumber%
    \else%
        \@arabic\c@framenumber%
    \fi%
}
\makeatother