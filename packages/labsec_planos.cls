%% Classe Criada por Marcelo Carlomagno Carlos
%% Data de criacao: 02/04/2008
%%
%% Ultima modificacao: 09/04/2008
%% - Adicionados exemplos de uso
%% - Pequenos ajustes na apresentacao
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{packages/labsec_planos} [2007/06/19]

\LoadClass[11pt,a4paper]{report}

\RequirePackage{fancyhdr}
\RequirePackage{hyphenat}
\RequirePackage{fullpage}
\RequirePackage[paper=a4paper,bottom=30mm,left=30mm,right=30mm,top=30mm,headheight=7mm,headsep=5mm,marginparsep=5mm,marginparwidth=10mm]{geometry}
\RequirePackage{times}
\RequirePackage{tocbibind}
\RequirePackage{subfigure}
\RequirePackage[portuges,brazilian]{babel}
%\RequirePackage[brazil]{babel}
\RequirePackage{graphicx}
\RequirePackage{indentfirst}
%\RequirePackage[latin1]{inputenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsfonts,amssymb}
\RequirePackage{lastpage}
%\usepackage{longtable,color}
\usepackage{url}
\RequirePackage{mdwtab}
%\RequirePackage[dvips]{graphicx}
\RequirePackage[colorlinks=false]{hyperref}
\RequirePackage[small]{caption}
\RequirePackage{supertabular}
% Permite cita\c{c}\~{o}es mais elaboradas
\RequirePackage{cite}
\RequirePackage{makeidx}

\renewcommand{\rmdefault}{phv} % Arial
\renewcommand{\sfdefault}{phv} % Arial
\linespread{1.3} % spacamento 1.5

\usepackage{color}
\definecolor{azul-labsec}{cmyk}{0.8,0.37,0,0}
\definecolor{verde-labsec}{cmyk}{0.64,0.02,1,0}

\renewcommand{\chapter} {\clearpage      % Starts new page.
   \thispagestyle{fancy}           % Page style of chapter page is 'plain'
   \global\@topnum\z@              % Prevents figures from going at top of page.
   \@afterindenttrue               % Inserts indent in first paragraph.  Change
   \secdef\@chapter\@schapter} 


\renewcommand{\@makechapterhead}[1]{%
  \vspace*{10\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \Huge\bfseries \thechapter \hspace{5pt}
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
  }}
\def\@makeschapterhead#1{%
  \vspace*{10\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}
  
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}
\newcommand{\defineValor}[2]{ \gdef#1{#2} }

\newcommand*{\@localDocumento}{
	\ClassError{labsec_planos}
    		{Faltou especificar o local do documento.}
    		{Utilize o comando \protect\localDocumento{} no preambulo.}
}
\newcommand{\localDocumento}[1]{\defineValor{\@localDocumento}{#1}}

\newcommand*{\@dataDocumento}{}
\newcommand{\dataDocumento}[1]{\defineValor{\@dataDocumento}{#1}}

\newcommand*{\@revisaoDocumento}{}
\newcommand{\revisaoDocumento}[1]{\defineValor{\@revisaoDocumento}{#1}}

\newcommand*{\@logoLabsec}{
	\ClassError{labsec_planos}
    		{Faltou especificar o arquivo do logo do labsec.}
    		{Utilize o comando \protect\logoLabsec{} no preambulo.}
}
\newcommand{\logoLabsec}[1]{\defineValor{\@logoLabsec}{#1}}

\newcommand*{\@logoINE}{\ClassError{labsec_planos}
    		{Faltou especificar o o arquivo do logo do INE.}
    		{Utilize o comando \protect\logoINE{} no preambulo.}
}
\newcommand{\logoINE}[1]{\defineValor{\@logoINE}{#1}}

\newcommand*{\@nomeProjeto}{}
\newcommand{\nomeProjeto}[1]{\defineValor{\@nomeProjeto}{#1}}

\newcommand*{\@versaoDocumento}{}
\newcommand{\versaoDocumento}[1]{\defineValor{\@versaoDocumento}{#1}}

\newcommand*{\@classificacaoDocumento}{}
\newcommand{\classificacaoDocumento}[1]{\defineValor{\@classificacaoDocumento}{#1}}

\newcommand*{\@dataRevA}{}
\newcommand{\dataRevA}[1]{\defineValor{\@dataRevA}{#1}}
\newcommand*{\@versaoRevA}{}
\newcommand{\versaoRevA}[1]{\defineValor{\@versaoRevA}{#1}}
\newcommand*{\@descRevA}{}
\newcommand{\descRevA}[1]{\defineValor{\@descRevA}{#1}}
\newcommand*{\@autorRevA}{}
\newcommand{\autorRevA}[1]{\defineValor{\@autorRevA}{#1}}
\newcommand*{\@revisorRevA}{}
\newcommand{\revisorRevA}[1]{\defineValor{\@revisorRevA}{#1}}
\newcommand*{\@aprovadoRevA}{}
\newcommand{\aprovadoRevA}[1]{\defineValor{\@aprovadoRevA}{#1}}

\newcommand*{\@dataRevB}{}
\newcommand{\dataRevB}[1]{\defineValor{\@dataRevB}{#1}}
\newcommand*{\@versaoRevB}{}
\newcommand{\versaoRevB}[1]{\defineValor{\@versaoRevB}{#1}}
\newcommand*{\@descRevB}{}
\newcommand{\descRevB}[1]{\defineValor{\@descRevB}{#1}}
\newcommand*{\@autorRevB}{}
\newcommand{\autorRevB}[1]{\defineValor{\@autorRevB}{#1}}
\newcommand*{\@revisorRevB}{}
\newcommand{\revisorRevB}[1]{\defineValor{\@revisorRevB}{#1}}
\newcommand*{\@aprovadoRevB}{}
\newcommand{\aprovadoRevB}[1]{\defineValor{\@aprovadoRevB}{#1}}

\newcommand*{\@dataRevC}{}
\newcommand{\dataRevC}[1]{\defineValor{\@dataRevC}{#1}}
\newcommand*{\@versaoRevC}{}
\newcommand{\versaoRevC}[1]{\defineValor{\@versaoRevC}{#1}}
\newcommand*{\@descRevC}{}
\newcommand{\descRevC}[1]{\defineValor{\@descRevC}{#1}}
\newcommand*{\@autorRevC}{}
\newcommand{\autorRevC}[1]{\defineValor{\@autorRevC}{#1}}
\newcommand*{\@revisorRevC}{}
\newcommand{\revisorRevC}[1]{\defineValor{\@revisorRevC}{#1}}
\newcommand*{\@aprovadoRevC}{}
\newcommand{\aprovadoRevC}[1]{\defineValor{\@aprovadoRevC}{#1}}

\newcommand*{\@dataRevD}{}
\newcommand{\dataRevD}[1]{\defineValor{\@dataRevD}{#1}}
\newcommand*{\@versaoRevD}{}
\newcommand{\versaoRevD}[1]{\defineValor{\@versaoRevD}{#1}}
\newcommand*{\@descRevD}{}
\newcommand{\descRevD}[1]{\defineValor{\@descRevD}{#1}}
\newcommand*{\@autorRevD}{}
\newcommand{\autorRevD}[1]{\defineValor{\@autorRevD}{#1}}
\newcommand*{\@revisorRevD}{}
\newcommand{\revisorRevD}[1]{\defineValor{\@revisorRevD}{#1}}
\newcommand*{\@aprovadoRevD}{}
\newcommand{\aprovadoRevD}[1]{\defineValor{\@aprovadoRevD}{#1}}

\newcommand*{\@dataRevE}{}
\newcommand{\dataRevE}[1]{\defineValor{\@dataRevE}{#1}}
\newcommand*{\@versaoRevE}{}
\newcommand{\versaoRevE}[1]{\defineValor{\@versaoRevE}{#1}}
\newcommand*{\@descRevE}{}
\newcommand{\descRevE}[1]{\defineValor{\@descRevE}{#1}}
\newcommand*{\@autorRevE}{}
\newcommand{\autorRevE}[1]{\defineValor{\@autorRevE}{#1}}
\newcommand*{\@revisorRevE}{}
\newcommand{\revisorRevE}[1]{\defineValor{\@revisorRevE}{#1}}
\newcommand*{\@aprovadoRevE}{}
\newcommand{\aprovadoRevE}[1]{\defineValor{\@aprovadoRevE}{#1}}

\newcommand*{\@dataRevF}{}
\newcommand{\dataRevF}[1]{\defineValor{\@dataRevF}{#1}}
\newcommand*{\@versaoRevF}{}
\newcommand{\versaoRevF}[1]{\defineValor{\@versaoRevF}{#1}}
\newcommand*{\@descRevF}{}
\newcommand{\descRevF}[1]{\defineValor{\@descRevF}{#1}}
\newcommand*{\@autorRevF}{}
\newcommand{\autorRevF}[1]{\defineValor{\@autorRevF}{#1}}
\newcommand*{\@revisorRevF}{}
\newcommand{\revisorRevF}[1]{\defineValor{\@revisorRevF}{#1}}
\newcommand*{\@aprovadoRevF}{}
\newcommand{\aprovadoRevF}[1]{\defineValor{\@aprovadoRevF}{#1}}

\newcommand*{\@dataRevG}{}
\newcommand{\dataRevG}[1]{\defineValor{\@dataRevG}{#1}}
\newcommand*{\@versaoRevG}{}
\newcommand{\versaoRevG}[1]{\defineValor{\@versaoRevG}{#1}}
\newcommand*{\@descRevG}{}
\newcommand{\descRevG}[1]{\defineValor{\@descRevG}{#1}}
\newcommand*{\@autorRevG}{}
\newcommand{\autorRevG}[1]{\defineValor{\@autorRevG}{#1}}
\newcommand*{\@revisorRevG}{}
\newcommand{\revisorRevG}[1]{\defineValor{\@revisorRevG}{#1}}
\newcommand*{\@aprovadoRevG}{}
\newcommand{\aprovadoRevG}[1]{\defineValor{\@aprovadoRevG}{#1}}

\newcommand*{\@dataRevH}{}
\newcommand{\dataRevH}[1]{\defineValor{\@dataRevH}{#1}}
\newcommand*{\@versaoRevH}{}
\newcommand{\versaoRevH}[1]{\defineValor{\@versaoRevH}{#1}}
\newcommand*{\@descRevH}{}
\newcommand{\descRevH}[1]{\defineValor{\@descRevH}{#1}}
\newcommand*{\@autorRevH}{}
\newcommand{\autorRevH}[1]{\defineValor{\@autorRevH}{#1}}
\newcommand*{\@revisorRevH}{}
\newcommand{\revisorRevH}[1]{\defineValor{\@revisorRevH}{#1}}
\newcommand*{\@aprovadoRevH}{}
\newcommand{\aprovadoRevH}[1]{\defineValor{\@aprovadoRevH}{#1}}

%svn headers
\headheight = 30pt
\pagestyle{fancy}
\lhead{\nouppercase{\leftmark}}
\cfoot{}
\chead{}
%\rhead{\@title}
\rhead{}
%\rhead{\leftmark}
\lfoot{LabSEC}
\cfoot{Vers\~{a}o \@versaoDocumento ~-- \@dataDocumento}
\rfoot{P\'{a}gina \thepage \hspace{0,1 cm} de \pageref{LastPage}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\makeatletter
\def\maketitle{%
  \thispagestyle{empty}%  
	\begin{figure*}[!htb]
		\centerline{
			\subfigure{\includegraphics[width=3.7cm]{\@logoLabsec}}
			\hfill
			\subfigure{\includegraphics[width=4cm]{\@logoINE}}
		}		
	\end{figure*}
	\begin{center}\leavevmode
    	\normalfont
	\hrule
	\vskip 5pt
    	{\large \textbf{\@nomeProjeto}\par}%
	\vskip 2pt
	\hrule
	\vskip 4cm
    	{\LARGE \textbf{\@title}\par}%
    	\vskip 4cm
    	{\large \@author\par}%
    	\vfill
    	%{\normalsize \@date\par}%
  	\end{center}%
	\vfill
	\small Classifica\c{c}\~{a}o: \@classificacaoDocumento \\
	\small Data: \@dataDocumento \\
	\small \@revisaoDocumento 
  	\cleardoublepage
  }


\def\makehistorico{%
\linespread{1} % spacamento 1
\chapter*{Hist\'{o}rico}
\begin{table}[ht!]
\begin{center}
\begin{tabular}[t]{|p{1.8cm}|p{1.1cm}|p{3.4cm}|p{2cm}|p{2cm}|p{2cm}|}
\hline
{\bf {\small{Data}}} &	
{\bf {\small{Vers\~{a}o}}} &
{\bf {\small{Descri\c{c}\~{a}o}}} &
{\bf {\small{Autor}}} &
{\bf {\small{Revisor}}} &
{\bf {\small{Aprovado por}}} \\

	\hline
	\@dataRevA	&	
	\@versaoRevA	&	
	\@descRevA	&	
	\nohyphens{\@autorRevA}	&	
	\nohyphens{\@revisorRevA} &
	\nohyphens{\@aprovadoRevA} \\

	\hline
	\@dataRevB	&	
	\@versaoRevB	&	
	\@descRevB	&	
	\nohyphens{\@autorRevB}	&	
	\nohyphens{\@revisorRevB} &
	\nohyphens{\@aprovadoRevB} \\

	\hline
	\@dataRevC	&	
	\@versaoRevC	&	
	\@descRevC	&	
	\nohyphens{\@autorRevC}	&	
	\nohyphens{\@revisorRevC} &
	\nohyphens{\@aprovadoRevC} \\

	\hline
	\@dataRevD	&	
	\@versaoRevD	&	
	\@descRevD	&	
	\nohyphens{\@autorRevD}	&	
	\nohyphens{\@revisorRevD} &
	\nohyphens{\@aprovadoRevD} \\

	\hline
	\@dataRevE	&	
	\@versaoRevE	&	
	\@descRevE	&	
	\nohyphens{\@autorRevE}	&	
	\nohyphens{\@revisorRevE} &
	\nohyphens{\@aprovadoRevE} \\

	\hline
	\@dataRevF	&	
	\@versaoRevF	&	
	\@descRevF	&	
	\nohyphens{\@autorRevF}	&	
	\nohyphens{\@revisorRevF} &
	\nohyphens{\@aprovadoRevF} \\

	\hline
	\@dataRevG	&	
	\@versaoRevG	&	
	\@descRevG	&	
	\nohyphens{\@autorRevG}	&	
	\nohyphens{\@revisorRevG} &
	\nohyphens{\@aprovadoRevG} \\

	\hline
	\@dataRevH	&	
	\@versaoRevH	&	
	\@descRevH	&	
	\nohyphens{\@autorRevH}	&	
	\nohyphens{\@revisorRevH} &
	\nohyphens{\@aprovadoRevH} \\

\hline
\end{tabular}
\end{center}
\end{table}
\linespread{1.3} % spacamento 1.5
}
