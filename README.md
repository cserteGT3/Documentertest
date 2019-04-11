# Documentertest
This is a test repo for Documenter.jl

I encountered this [issue](https://discourse.julialang.org/t/issue-with-documenters-pdf-output-pictures-not-found/23023) and this repo is for creating an MWE.

Error and errorfiles below:

## Error

```julia
C:\Users\cstamas\Documents\GIT\Documentertest>julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.1.0 (2019-01-21)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

(v1.1) pkg> activate .

julia> include("docs/make.jl")
[ Info: SetupBuildDirectory: setting up build directory.
[ Info: ExpandTemplates: expanding markdown templates.
[ Info: CrossReferences: building cross-references.
[ Info: CheckDocument: running document checks.
[ Info: Populate: populating indices.
[ Info: RenderDocument: rendering document.
[ Info: HTMLWriter: rendering HTML pages.

julia> include("docs/makepdf.jl")
[ Info: SetupBuildDirectory: setting up build directory.
[ Info: ExpandTemplates: expanding markdown templates.
[ Info: CrossReferences: building cross-references.
[ Info: CheckDocument: running document checks.
[ Info: Populate: populating indices.
[ Info: RenderDocument: rendering document.
[ Info: LaTeXWriter: rendering PDF.
[ Info: LaTeXWriter: using docker to compile tex.
┌ Error: LaTeXWriter: failed to compile tex with docker. Logs and partial output can be found in C:\Users\cstamas\AppData\Local\Temp\jl_1580.tmp.
│   exception =
│    failed process: Process(`docker exec -u zeptodoctor latex-container bash -c 'mkdir /home/zeptodoctor/build
│    cd /home/zeptodoctor/build
│    cp -r /mnt/. .
│    latexmk -f -interaction=nonstopmode -view=none -lualatex -shell-escape Issuetest.tex
│    '`, ProcessExited(12)) [12]
└ @ Documenter.Writers.LaTeXWriter C:\Users\cstamas\.julia\packages\Documenter\8vUAI\src\Writers\LaTeXWriter.jl:166

julia> versioninfo()
Julia Version 1.1.0
Commit 80516ca202 (2019-01-21 21:24 UTC)
Platform Info:
  OS: Windows (x86_64-w64-mingw32)
  CPU: Intel(R) Core(TM) i7-3632QM CPU @ 2.20GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-6.0.1 (ORCJIT, ivybridge)

(Documentertest) pkg> st
    Status `C:\Users\cstamas\Documents\GIT\Documentertest\Project.toml`
  [e30172f5] Documenter v0.22.2
  [cd674d7a] DocumenterLaTeX v0.2.0
```

## LaTeXWriter.stderr

```
Latexmk: This is Latexmk, John Collins, 1 January 2015, version: 4.41.
Rule 'pdflatex': Rules & subrules not known to be previously run:
   pdflatex
Rule 'pdflatex': The following rules & subrules became out-of-date:
      'pdflatex'
------------
Run number 1 of rule 'pdflatex'
------------
------------
Running 'lualatex  -interaction=nonstopmode -shell-escape -recorder  "Issuetest.tex"'
------------
tput: No value for $TERM and no -T specified
Latexmk: Missing input file: 'guides.png' from line
  'LaTeX Warning: File `guides.png' not found on input line 109.'
Latexmk: Missing input file: 'guides.png' from line
  'LaTeX Warning: File `guides.png' not found on input line 125.'
Latexmk: Missing input file: 'infos.png' from line
  'LaTeX Warning: File `infos.png' not found on input line 154.'
Latexmk: Missing input file: 'infos.png' from line
  'LaTeX Warning: File `infos.png' not found on input line 173.'
Latexmk: References changed.
Latexmk: Log file says output to 'Issuetest.pdf'
Rule 'pdflatex': File changes, etc:
   Changed files, or newly in use since previous run(s):
      'Issuetest.aux'
------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'lualatex  -interaction=nonstopmode -shell-escape -recorder  "Issuetest.tex"'
------------
tput: No value for $TERM and no -T specified
Latexmk: Missing input file: 'guides.png' from line
  'LaTeX Warning: File `guides.png' not found on input line 109.'
Latexmk: Missing input file: 'guides.png' from line
  'LaTeX Warning: File `guides.png' not found on input line 125.'
Latexmk: Missing input file: 'infos.png' from line
  'LaTeX Warning: File `infos.png' not found on input line 154.'
Latexmk: Missing input file: 'infos.png' from line
  'LaTeX Warning: File `infos.png' not found on input line 173.'
Latexmk: Log file says output to 'Issuetest.pdf'
Rule 'pdflatex': File changes, etc:
   Changed files, or newly in use since previous run(s):
      'Issuetest.out'
      'Issuetest.toc'
------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'lualatex  -interaction=nonstopmode -shell-escape -recorder  "Issuetest.tex"'
------------
tput: No value for $TERM and no -T specified
Latexmk: Missing input file: 'guides.png' from line
  'LaTeX Warning: File `guides.png' not found on input line 109.'
Latexmk: Missing input file: 'guides.png' from line
  'LaTeX Warning: File `guides.png' not found on input line 125.'
Latexmk: Missing input file: 'infos.png' from line
  'LaTeX Warning: File `infos.png' not found on input line 154.'
Latexmk: Missing input file: 'infos.png' from line
  'LaTeX Warning: File `infos.png' not found on input line 173.'
Latexmk: Log file says output to 'Issuetest.pdf'
Collected error summary (may duplicate other messages):
  pdflatex: Command for 'pdflatex' gave return code 256

```

## LaTeXWriter.stdout

```
Latexmk: applying rule 'pdflatex'...
This is LuaTeX, Version 1.0.4 (TeX Live 2017/Debian) 
 system commands enabled.
(./Issuetest.tex
LaTeX2e <2017-04-15>
(created cache path: /home/zeptodoctor/.texlive2017/texmf-var)(using write cach
e: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic)(using read ca
che: /var/lib/texmf/luatex-cache/generic /home/zeptodoctor/.texlive2017/texmf-v
ar/luatex-cache/generic)
luaotfload | main : initialization completed in 0.121 seconds
Babel <3.18> and hyphenation patterns for 1 language(s) loaded.
(/usr/share/texlive/texmf-dist/tex/latex/memoir/memoir.cls
Document Class: memoir 2016/05/16 v3.7f configurable book, report, article docu
ment class
(/usr/share/texlive/texmf-dist/tex/generic/luatex85/luatex85.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/ifpdf.sty)
(/usr/share/texlive/texmf-dist/tex/generic/ifxetex/ifxetex.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/ifluatex.sty)
(/usr/share/texlive/texmf-dist/tex/latex/memoir/mem10.clo
luaotfload | db : Font names database not found, generating new one.
luaotfload | db : This can take several minutes; please be patient.(save: /home/zeptodoct
or/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lmroman10-regular.lua)
(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/
lmroman10-regular.luc))(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-c
ache/generic/fonts/otl/lmroman8-regular.lua)(save: /home/zeptodoctor/.texlive20
17/texmf-var/luatex-cache/generic/fonts/otl/lmroman8-regular.luc)(save: /home/z
eptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lmroman9-regul
ar.lua)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fon
ts/otl/lmroman9-regular.luc)
(/usr/share/texlive/texmf-dist/tex/latex/memoir/mempatch.sty))
(./documenter.sty
(/usr/share/texlive/texmf-dist/tex/latex/fontspec/fontspec.sty
(/usr/share/texlive/texmf-dist/tex/latex/l3packages/xparse/xparse.sty
(/usr/share/texlive/texmf-dist/tex/latex/l3kernel/expl3.sty
(/usr/share/texlive/texmf-dist/tex/latex/l3kernel/expl3-code.tex)
(/usr/share/texlive/texmf-dist/tex/latex/l3kernel/l3pdfmode.def)))
(/usr/share/texlive/texmf-dist/tex/latex/fontspec/fontspec-luatex.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/fontenc.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/tuenc.def))
(/usr/share/texlive/texmf-dist/tex/latex/fontspec/fontspec.cfg)(save: /home/zep
todoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lmroman10-bold.l
ua)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/o
tl/lmroman10-bold.luc)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-ca
che/generic/fonts/otl/lmroman10-italic.lua)(save: /home/zeptodoctor/.texlive201
7/texmf-var/luatex-cache/generic/fonts/otl/lmroman10-italic.luc)))
(/usr/share/texlive/texmf-dist/tex/latex/newunicodechar/newunicodechar.sty)
(/usr/share/texlive/texmf-dist/tex/latex/polyglossia/polyglossia.sty
(/usr/share/texlive/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/share/texlive/texmf-dist/tex/latex/makecmds/makecmds.sty)
(/usr/share/texlive/texmf-dist/tex/latex/xkeyval/xkeyval.sty
(/usr/share/texlive/texmf-dist/tex/generic/xkeyval/xkeyval.tex
(/usr/share/texlive/texmf-dist/tex/generic/xkeyval/xkvutils.tex
(/usr/share/texlive/texmf-dist/tex/generic/xkeyval/keyval.tex))))
(/usr/share/texlive/texmf-dist/tex/luatex/luatexbase/luatexbase.sty
(/usr/share/texlive/texmf-dist/tex/luatex/ctablestack/ctablestack.sty)))(save: 
/home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lato-re
gular.lua)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/
fonts/otl/lato-regular.luc)(save: /home/zeptodoctor/.texlive2017/texmf-var/luat
ex-cache/generic/fonts/otl/lato-bolditalic.lua)(save: /home/zeptodoctor/.texliv
e2017/texmf-var/luatex-cache/generic/fonts/otl/lato-bolditalic.luc)(save: /home
/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lato-bold.lu
a)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/ot
l/lato-bold.luc)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/ge
neric/fonts/otl/lato-italic.lua)(save: /home/zeptodoctor/.texlive2017/texmf-var
/luatex-cache/generic/fonts/otl/lato-italic.luc)(save: /home/zeptodoctor/.texli
ve2017/texmf-var/luatex-cache/generic/fonts/otl/robotomono-regular.lua)(save: /
home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/robotomo
no-regular.luc)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/gen
eric/fonts/otl/robotomono-bolditalic.lua)(save: /home/zeptodoctor/.texlive2017/
texmf-var/luatex-cache/generic/fonts/otl/robotomono-bolditalic.luc)(save: /home
/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/robotomono-b
old.lua)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fo
nts/otl/robotomono-bold.luc)(save: /home/zeptodoctor/.texlive2017/texmf-var/lua
tex-cache/generic/fonts/otl/robotomono-italic.lua)(save: /home/zeptodoctor/.tex
live2017/texmf-var/luatex-cache/generic/fonts/otl/robotomono-italic.luc)
(/usr/share/texlive/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/share/texlive/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/share/texlive/texmf-dist/tex/latex/graphics-def/luatex.def))
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/share/texlive/texmf-dist/tex/latex/listings/listings.sty
(/usr/share/texlive/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/listings/listings.cfg))
(/usr/share/texlive/texmf-dist/tex/latex/minted/minted.sty
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/kvoptions.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/ltxcmds.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/kvsetkeys.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/infwarerr.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/etexcmds.sty)))
(/usr/share/texlive/texmf-dist/tex/latex/fvextra/fvextra.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/ifthen.sty)
(/usr/share/texlive/texmf-dist/tex/latex/fancyvrb/fancyvrb.sty
Style option: `fancyvrb' v2.7a, with DG/SPQR fixes, and firstline=lastline fix 
<2008/02/07> (tvz))
(/usr/share/texlive/texmf-dist/tex/latex/upquote/upquote.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/textcomp.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/ts1enc.def)))
(/usr/share/texlive/texmf-dist/tex/latex/lineno/lineno.sty))
(/usr/share/texlive/texmf-dist/tex/latex/tools/calc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/tools/shellesc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/ifplatform/ifplatform.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/pdftexcmds.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/catchfile.sty)
(./Issuetest.w18))
(/usr/share/texlive/texmf-dist/tex/generic/xstring/xstring.sty
(/usr/share/texlive/texmf-dist/tex/generic/xstring/xstring.tex))
(/usr/share/texlive/texmf-dist/tex/latex/framed/framed.sty)
(/usr/share/texlive/texmf-dist/tex/latex/float/float.sty))
(/usr/share/texlive/texmf-dist/tex/latex/tabulary/tabulary.sty)
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/hobsub-hyperref.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/hobsub-generic.sty
(/usr/share/texlive/texmf-dist/scripts/oberdiek/oberdiek.luatex.lua)))
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/auxhook.sty)
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/share/texlive/texmf-dist/tex/latex/latexconfig/hyperref.cfg)
(/usr/share/texlive/texmf-dist/tex/latex/url/url.sty))
(/usr/share/texlive/texmf-dist/tex/latex/memoir/memhfixc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/hluatex.def
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/rerunfilecheck.sty))

Package hyperref Warning: Option `pdfpagelabels' has already been used,
(hyperref)                setting the option has no effect on input line 60.


Package hyperref Warning: Option `bookmarks' has already been used,
(hyperref)                setting the option has no effect on input line 60.


Package hyperref Warning: Option `hyperindex' has already been used,
(hyperref)                setting the option has no effect on input line 60.

(/usr/share/texlive/texmf-dist/tex/latex/hyperref/puenc.def)

******************************************************
Stock height and width: 794.96999pt by 614.295pt
Top and edge trims: 0pt and 0pt
Page height and width: 794.96999pt by 614.295pt
Text height and width: 622pt by 433pt
Spine and edge margins: 108.405pt and 72.26999pt
Upper and lower margins: 108.405pt and 64.56499pt
Headheight and headsep: 12pt and 24.13501pt
Footskip: 25.29494pt
Columnsep and columnseprule: 10pt and 0pt
Marginparsep and marginparwidth: 7pt and 58.26999pt
Sidecapsep and sidecapwidth: 7pt and 128pt
Sidebarhsep and sidebarwidth: 7pt and 128pt
Sidebarvsep and sidebartopsep: 12pt and 0pt
Sidebarheight: 548.39996pt
Sidefoothsep and sidefootwidth: 7pt and 128pt
Sidefootvsep and sidefootheight: 12pt and 548.39996pt
******************************************************

) (/usr/share/texlive/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/share/texlive/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/share/texlive/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/share/texlive/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)))
(./custom.sty)/usr/bin/pygmentize
 (./Issuetest.aux)
(/usr/share/texlive/texmf-dist/tex/latex/base/ts1cmr.fd)
(/usr/share/texlive/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/share/texlive/texmf-dist/tex/latex/oberdiek/epstopdf-base.sty
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/grfext.sty)
(/usr/share/texlive/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/gettitlestring.sty))
Redoing nameref's sectioning
Redoing nameref's label
(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/
lmroman6-regular.lua)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cac
he/generic/fonts/otl/lmroman6-regular.luc)
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/umsb.fd) [1{/var/lib/texmf/fo
nts/map/pdftex/updmap/pdftex.map}] [2] [1] [2] [3] [4]

Package hyperref Warning: Difference (2) between bookmark levels is greater 
(hyperref)                than one, level fixed on input line 53.

[5] [6]
Overfull \hbox (80.91873pt too wide) in paragraph at lines 90--91
 [][] 
[7] [8<./Lena.png>] [9] [10] [11] [12]
! Undefined control sequence.
<argument> guides\Lena 
            
l.109 \includegraphics{guides\Lena.png}
                                     
! Undefined control sequence.
<write> 
LaTeX Warning: File `guides\Lena 
                                  .png' not found\on@line .
l.109 \includegraphics{guides\Lena.png}
                                     

LaTeX Warning: File `guides.png' not found on input line 109.


! Package luatex.def Error: File `guides.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.109 \includegraphics{guides\Lena.png}
                                     
[13] [14] [15] [16]
! Undefined control sequence.
<argument> guides\Lena 
            
l.125 \includegraphics{guides\Lena.png}
                                     
! Undefined control sequence.
<write> 
LaTeX Warning: File `guides\Lena 
                                  .png' not found\on@line .
l.125 \includegraphics{guides\Lena.png}
                                     

LaTeX Warning: File `guides.png' not found on input line 125.


! Package luatex.def Error: File `guides.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.125 \includegraphics{guides\Lena.png}
                                     
[17] [18] [19] [20]
! Undefined control sequence.
<argument> infos\Lena 
           
l.154 \includegraphics{infos\Lena.png}
                                    
! Undefined control sequence.
<write> 
LaTeX Warning: File `infos\Lena 
                                 .png' not found\on@line .
l.154 \includegraphics{infos\Lena.png}
                                    

LaTeX Warning: File `infos.png' not found on input line 154.


! Package luatex.def Error: File `infos.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.154 \includegraphics{infos\Lena.png}
                                    
[21] [22]
! Undefined control sequence.
<argument> infos\old 
          \Lena 
l.173 \includegraphics{infos\old\Lena.png}
                                        
! Undefined control sequence.
<argument> infos\old \Lena 
                
l.173 \includegraphics{infos\old\Lena.png}
                                        
! Undefined control sequence.
<write> 
LaTeX Warning: File `infos\old 
                                \Lena .png' not found\on@line .
l.173 \includegraphics{infos\old\Lena.png}
                                        
! Undefined control sequence.
<write> 
LaTeX Warning: File `infos\old \Lena 
                                      .png' not found\on@line .
l.173 \includegraphics{infos\old\Lena.png}
                                        

LaTeX Warning: File `infos.png' not found on input line 173.


! Package luatex.def Error: File `infos.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.173 \includegraphics{infos\old\Lena.png}
                                        
[23] (./Issuetest.aux)

Package rerunfilecheck Warning: File `Issuetest.out' has changed.
(rerunfilecheck)                Rerun to get outlines right
(rerunfilecheck)                or use package `bookmark'.

)
(see the transcript file for additional information)
 1179 words of node memory still in use:
   6 hlist, 2 vlist, 2 rule, 2 glue, 1 kern, 8 attribute, 194 glue_spec, 8 attr
ibute_list, 2 write nodes
   avail lists: 1:1,2:226,3:49,4:12,5:148,6:722,7:194,8:27,9:67,10:6,11:84
</usr/share/fonts/robotomono/RobotoMono-Regular.ttf></usr/share/fonts/truetype/
lato/Lato-Italic.ttf></usr/share/fonts/truetype/lato/Lato-Bold.ttf></usr/share/
fonts/truetype/lato/Lato-Regular.ttf>
Output written on Issuetest.pdf (25 pages, 795289 bytes).
Transcript written on Issuetest.log.
Latexmk: applying rule 'pdflatex'...
This is LuaTeX, Version 1.0.4 (TeX Live 2017/Debian) 
 system commands enabled.
(./Issuetest.tex
LaTeX2e <2017-04-15>
(using write cache: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/gener
ic)(using read cache: /var/lib/texmf/luatex-cache/generic /home/zeptodoctor/.te
xlive2017/texmf-var/luatex-cache/generic)
luaotfload | main : initialization completed in 0.124 seconds
Babel <3.18> and hyphenation patterns for 1 language(s) loaded.
(/usr/share/texlive/texmf-dist/tex/latex/memoir/memoir.cls
Document Class: memoir 2016/05/16 v3.7f configurable book, report, article docu
ment class
(/usr/share/texlive/texmf-dist/tex/generic/luatex85/luatex85.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/ifpdf.sty)
(/usr/share/texlive/texmf-dist/tex/generic/ifxetex/ifxetex.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/ifluatex.sty)
(/usr/share/texlive/texmf-dist/tex/latex/memoir/mem10.clo(load luc: /home/zepto
doctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lmroman10-regular.
luc))(load luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/f
onts/otl/lmroman8-regular.luc)(load luc: /home/zeptodoctor/.texlive2017/texmf-v
ar/luatex-cache/generic/fonts/otl/lmroman9-regular.luc)
(/usr/share/texlive/texmf-dist/tex/latex/memoir/mempatch.sty))
(./documenter.sty
(/usr/share/texlive/texmf-dist/tex/latex/fontspec/fontspec.sty
(/usr/share/texlive/texmf-dist/tex/latex/l3packages/xparse/xparse.sty
(/usr/share/texlive/texmf-dist/tex/latex/l3kernel/expl3.sty
(/usr/share/texlive/texmf-dist/tex/latex/l3kernel/expl3-code.tex)
(/usr/share/texlive/texmf-dist/tex/latex/l3kernel/l3pdfmode.def)))
(/usr/share/texlive/texmf-dist/tex/latex/fontspec/fontspec-luatex.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/fontenc.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/tuenc.def))
(/usr/share/texlive/texmf-dist/tex/latex/fontspec/fontspec.cfg)(load luc: /home
/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lmroman10-bo
ld.luc)(load luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic
/fonts/otl/lmroman10-italic.luc)))
(/usr/share/texlive/texmf-dist/tex/latex/newunicodechar/newunicodechar.sty)
(/usr/share/texlive/texmf-dist/tex/latex/polyglossia/polyglossia.sty
(/usr/share/texlive/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/share/texlive/texmf-dist/tex/latex/makecmds/makecmds.sty)
(/usr/share/texlive/texmf-dist/tex/latex/xkeyval/xkeyval.sty
(/usr/share/texlive/texmf-dist/tex/generic/xkeyval/xkeyval.tex
(/usr/share/texlive/texmf-dist/tex/generic/xkeyval/xkvutils.tex
(/usr/share/texlive/texmf-dist/tex/generic/xkeyval/keyval.tex))))
(/usr/share/texlive/texmf-dist/tex/luatex/luatexbase/luatexbase.sty
(/usr/share/texlive/texmf-dist/tex/luatex/ctablestack/ctablestack.sty)))(load l
uc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lat
o-regular.luc)(load luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/
generic/fonts/otl/lato-bolditalic.luc)(load luc: /home/zeptodoctor/.texlive2017
/texmf-var/luatex-cache/generic/fonts/otl/lato-bold.luc)(load luc: /home/zeptod
octor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lato-italic.luc)(lo
ad luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl
/robotomono-regular.luc)(load luc: /home/zeptodoctor/.texlive2017/texmf-var/lua
tex-cache/generic/fonts/otl/robotomono-bolditalic.luc)(load luc: /home/zeptodoc
tor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/robotomono-bold.luc)(
load luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/o
tl/robotomono-italic.luc)
(/usr/share/texlive/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/share/texlive/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/share/texlive/texmf-dist/tex/latex/graphics-def/luatex.def))
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/share/texlive/texmf-dist/tex/latex/listings/listings.sty
(/usr/share/texlive/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/listings/listings.cfg))
(/usr/share/texlive/texmf-dist/tex/latex/minted/minted.sty
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/kvoptions.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/ltxcmds.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/kvsetkeys.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/infwarerr.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/etexcmds.sty)))
(/usr/share/texlive/texmf-dist/tex/latex/fvextra/fvextra.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/ifthen.sty)
(/usr/share/texlive/texmf-dist/tex/latex/fancyvrb/fancyvrb.sty
Style option: `fancyvrb' v2.7a, with DG/SPQR fixes, and firstline=lastline fix 
<2008/02/07> (tvz))
(/usr/share/texlive/texmf-dist/tex/latex/upquote/upquote.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/textcomp.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/ts1enc.def)))
(/usr/share/texlive/texmf-dist/tex/latex/lineno/lineno.sty))
(/usr/share/texlive/texmf-dist/tex/latex/tools/calc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/tools/shellesc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/ifplatform/ifplatform.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/pdftexcmds.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/catchfile.sty)
(./Issuetest.w18))
(/usr/share/texlive/texmf-dist/tex/generic/xstring/xstring.sty
(/usr/share/texlive/texmf-dist/tex/generic/xstring/xstring.tex))
(/usr/share/texlive/texmf-dist/tex/latex/framed/framed.sty)
(/usr/share/texlive/texmf-dist/tex/latex/float/float.sty))
(/usr/share/texlive/texmf-dist/tex/latex/tabulary/tabulary.sty)
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/hobsub-hyperref.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/hobsub-generic.sty
(/usr/share/texlive/texmf-dist/scripts/oberdiek/oberdiek.luatex.lua)))
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/auxhook.sty)
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/share/texlive/texmf-dist/tex/latex/latexconfig/hyperref.cfg)
(/usr/share/texlive/texmf-dist/tex/latex/url/url.sty))
(/usr/share/texlive/texmf-dist/tex/latex/memoir/memhfixc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/hluatex.def
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/rerunfilecheck.sty))

Package hyperref Warning: Option `pdfpagelabels' has already been used,
(hyperref)                setting the option has no effect on input line 60.


Package hyperref Warning: Option `bookmarks' has already been used,
(hyperref)                setting the option has no effect on input line 60.


Package hyperref Warning: Option `hyperindex' has already been used,
(hyperref)                setting the option has no effect on input line 60.

(/usr/share/texlive/texmf-dist/tex/latex/hyperref/puenc.def)

******************************************************
Stock height and width: 794.96999pt by 614.295pt
Top and edge trims: 0pt and 0pt
Page height and width: 794.96999pt by 614.295pt
Text height and width: 622pt by 433pt
Spine and edge margins: 108.405pt and 72.26999pt
Upper and lower margins: 108.405pt and 64.56499pt
Headheight and headsep: 12pt and 24.13501pt
Footskip: 25.29494pt
Columnsep and columnseprule: 10pt and 0pt
Marginparsep and marginparwidth: 7pt and 58.26999pt
Sidecapsep and sidecapwidth: 7pt and 128pt
Sidebarhsep and sidebarwidth: 7pt and 128pt
Sidebarvsep and sidebartopsep: 12pt and 0pt
Sidebarheight: 548.39996pt
Sidefoothsep and sidefootwidth: 7pt and 128pt
Sidefootvsep and sidefootheight: 12pt and 548.39996pt
******************************************************

) (/usr/share/texlive/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/share/texlive/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/share/texlive/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/share/texlive/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)))
(./custom.sty)/usr/bin/pygmentize
 (./Issuetest.aux)
(/usr/share/texlive/texmf-dist/tex/latex/base/ts1cmr.fd)
(/usr/share/texlive/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/share/texlive/texmf-dist/tex/latex/oberdiek/epstopdf-base.sty
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/grfext.sty)
(/usr/share/texlive/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/gettitlestring.sty))
Redoing nameref's sectioning
Redoing nameref's label
(./Issuetest.out) (./Issuetest.out)(load luc: /home/zeptodoctor/.texlive2017/te
xmf-var/luatex-cache/generic/fonts/otl/lmroman6-regular.luc)
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/umsb.fd) (./Issuetest.toc(sav
e: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lmro
man7-regular.lua)(save: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/g
eneric/fonts/otl/lmroman7-regular.luc)(save: /home/zeptodoctor/.texlive2017/tex
mf-var/luatex-cache/generic/fonts/otl/lmroman5-regular.lua)(save: /home/zeptodo
ctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lmroman5-regular.luc
)) [1{/var/lib/texmf/fonts/map/pdftex/updmap/pdftex.map}] [2] [1] [2] [3]
[4]

Package hyperref Warning: Difference (2) between bookmark levels is greater 
(hyperref)                than one, level fixed on input line 53.

[5] [6]
Overfull \hbox (80.91873pt too wide) in paragraph at lines 90--91
 [][] 
[7] [8<./Lena.png>] [9] [10] [11] [12]
! Undefined control sequence.
<argument> guides\Lena 
            
l.109 \includegraphics{guides\Lena.png}
                                     
! Undefined control sequence.
<write> 
LaTeX Warning: File `guides\Lena 
                                  .png' not found\on@line .
l.109 \includegraphics{guides\Lena.png}
                                     

LaTeX Warning: File `guides.png' not found on input line 109.


! Package luatex.def Error: File `guides.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.109 \includegraphics{guides\Lena.png}
                                     
[13] [14] [15] [16]
! Undefined control sequence.
<argument> guides\Lena 
            
l.125 \includegraphics{guides\Lena.png}
                                     
! Undefined control sequence.
<write> 
LaTeX Warning: File `guides\Lena 
                                  .png' not found\on@line .
l.125 \includegraphics{guides\Lena.png}
                                     

LaTeX Warning: File `guides.png' not found on input line 125.


! Package luatex.def Error: File `guides.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.125 \includegraphics{guides\Lena.png}
                                     
[17] [18] [19] [20]
! Undefined control sequence.
<argument> infos\Lena 
           
l.154 \includegraphics{infos\Lena.png}
                                    
! Undefined control sequence.
<write> 
LaTeX Warning: File `infos\Lena 
                                 .png' not found\on@line .
l.154 \includegraphics{infos\Lena.png}
                                    

LaTeX Warning: File `infos.png' not found on input line 154.


! Package luatex.def Error: File `infos.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.154 \includegraphics{infos\Lena.png}
                                    
[21] [22]
! Undefined control sequence.
<argument> infos\old 
          \Lena 
l.173 \includegraphics{infos\old\Lena.png}
                                        
! Undefined control sequence.
<argument> infos\old \Lena 
                
l.173 \includegraphics{infos\old\Lena.png}
                                        
! Undefined control sequence.
<write> 
LaTeX Warning: File `infos\old 
                                \Lena .png' not found\on@line .
l.173 \includegraphics{infos\old\Lena.png}
                                        
! Undefined control sequence.
<write> 
LaTeX Warning: File `infos\old \Lena 
                                      .png' not found\on@line .
l.173 \includegraphics{infos\old\Lena.png}
                                        

LaTeX Warning: File `infos.png' not found on input line 173.


! Package luatex.def Error: File `infos.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.173 \includegraphics{infos\old\Lena.png}
                                        
[23] (./Issuetest.aux))
(see the transcript file for additional information)
 1175 words of node memory still in use:
   6 hlist, 2 vlist, 2 rule, 2 glue, 1 kern, 7 attribute, 194 glue_spec, 7 attr
ibute_list, 2 write nodes
   avail lists: 1:1,2:563,3:102,4:41,5:148,6:722,7:297,8:34,9:154,10:6,11:84
</usr/share/fonts/robotomono/RobotoMono-Regular.ttf></usr/share/fonts/truetype/
lato/Lato-Italic.ttf></usr/share/fonts/truetype/lato/Lato-Bold.ttf></usr/share/
fonts/truetype/lato/Lato-Regular.ttf>
Output written on Issuetest.pdf (25 pages, 797546 bytes).
Transcript written on Issuetest.log.
Latexmk: applying rule 'pdflatex'...
This is LuaTeX, Version 1.0.4 (TeX Live 2017/Debian) 
 system commands enabled.
(./Issuetest.tex
LaTeX2e <2017-04-15>
(using write cache: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/gener
ic)(using read cache: /var/lib/texmf/luatex-cache/generic /home/zeptodoctor/.te
xlive2017/texmf-var/luatex-cache/generic)
luaotfload | main : initialization completed in 0.129 seconds
Babel <3.18> and hyphenation patterns for 1 language(s) loaded.
(/usr/share/texlive/texmf-dist/tex/latex/memoir/memoir.cls
Document Class: memoir 2016/05/16 v3.7f configurable book, report, article docu
ment class
(/usr/share/texlive/texmf-dist/tex/generic/luatex85/luatex85.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/ifpdf.sty)
(/usr/share/texlive/texmf-dist/tex/generic/ifxetex/ifxetex.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/ifluatex.sty)
(/usr/share/texlive/texmf-dist/tex/latex/memoir/mem10.clo(load luc: /home/zepto
doctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lmroman10-regular.
luc))(load luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/f
onts/otl/lmroman8-regular.luc)(load luc: /home/zeptodoctor/.texlive2017/texmf-v
ar/luatex-cache/generic/fonts/otl/lmroman9-regular.luc)
(/usr/share/texlive/texmf-dist/tex/latex/memoir/mempatch.sty))
(./documenter.sty
(/usr/share/texlive/texmf-dist/tex/latex/fontspec/fontspec.sty
(/usr/share/texlive/texmf-dist/tex/latex/l3packages/xparse/xparse.sty
(/usr/share/texlive/texmf-dist/tex/latex/l3kernel/expl3.sty
(/usr/share/texlive/texmf-dist/tex/latex/l3kernel/expl3-code.tex)
(/usr/share/texlive/texmf-dist/tex/latex/l3kernel/l3pdfmode.def)))
(/usr/share/texlive/texmf-dist/tex/latex/fontspec/fontspec-luatex.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/fontenc.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/tuenc.def))
(/usr/share/texlive/texmf-dist/tex/latex/fontspec/fontspec.cfg)(load luc: /home
/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lmroman10-bo
ld.luc)(load luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic
/fonts/otl/lmroman10-italic.luc)))
(/usr/share/texlive/texmf-dist/tex/latex/newunicodechar/newunicodechar.sty)
(/usr/share/texlive/texmf-dist/tex/latex/polyglossia/polyglossia.sty
(/usr/share/texlive/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/share/texlive/texmf-dist/tex/latex/makecmds/makecmds.sty)
(/usr/share/texlive/texmf-dist/tex/latex/xkeyval/xkeyval.sty
(/usr/share/texlive/texmf-dist/tex/generic/xkeyval/xkeyval.tex
(/usr/share/texlive/texmf-dist/tex/generic/xkeyval/xkvutils.tex
(/usr/share/texlive/texmf-dist/tex/generic/xkeyval/keyval.tex))))
(/usr/share/texlive/texmf-dist/tex/luatex/luatexbase/luatexbase.sty
(/usr/share/texlive/texmf-dist/tex/luatex/ctablestack/ctablestack.sty)))(load l
uc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lat
o-regular.luc)(load luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/
generic/fonts/otl/lato-bolditalic.luc)(load luc: /home/zeptodoctor/.texlive2017
/texmf-var/luatex-cache/generic/fonts/otl/lato-bold.luc)(load luc: /home/zeptod
octor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/lato-italic.luc)(lo
ad luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl
/robotomono-regular.luc)(load luc: /home/zeptodoctor/.texlive2017/texmf-var/lua
tex-cache/generic/fonts/otl/robotomono-bolditalic.luc)(load luc: /home/zeptodoc
tor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/robotomono-bold.luc)(
load luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/o
tl/robotomono-italic.luc)
(/usr/share/texlive/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/share/texlive/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/share/texlive/texmf-dist/tex/latex/graphics-def/luatex.def))
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/share/texlive/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/share/texlive/texmf-dist/tex/latex/listings/listings.sty
(/usr/share/texlive/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/listings/listings.cfg))
(/usr/share/texlive/texmf-dist/tex/latex/minted/minted.sty
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/kvoptions.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/ltxcmds.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/kvsetkeys.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/infwarerr.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/etexcmds.sty)))
(/usr/share/texlive/texmf-dist/tex/latex/fvextra/fvextra.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/ifthen.sty)
(/usr/share/texlive/texmf-dist/tex/latex/fancyvrb/fancyvrb.sty
Style option: `fancyvrb' v2.7a, with DG/SPQR fixes, and firstline=lastline fix 
<2008/02/07> (tvz))
(/usr/share/texlive/texmf-dist/tex/latex/upquote/upquote.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/textcomp.sty
(/usr/share/texlive/texmf-dist/tex/latex/base/ts1enc.def)))
(/usr/share/texlive/texmf-dist/tex/latex/lineno/lineno.sty))
(/usr/share/texlive/texmf-dist/tex/latex/tools/calc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/tools/shellesc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/ifplatform/ifplatform.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/pdftexcmds.sty)
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/catchfile.sty)
(./Issuetest.w18))
(/usr/share/texlive/texmf-dist/tex/generic/xstring/xstring.sty
(/usr/share/texlive/texmf-dist/tex/generic/xstring/xstring.tex))
(/usr/share/texlive/texmf-dist/tex/latex/framed/framed.sty)
(/usr/share/texlive/texmf-dist/tex/latex/float/float.sty))
(/usr/share/texlive/texmf-dist/tex/latex/tabulary/tabulary.sty)
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/hobsub-hyperref.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/hobsub-generic.sty
(/usr/share/texlive/texmf-dist/scripts/oberdiek/oberdiek.luatex.lua)))
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/auxhook.sty)
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/share/texlive/texmf-dist/tex/latex/latexconfig/hyperref.cfg)
(/usr/share/texlive/texmf-dist/tex/latex/url/url.sty))
(/usr/share/texlive/texmf-dist/tex/latex/memoir/memhfixc.sty)
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/hluatex.def
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/rerunfilecheck.sty))

Package hyperref Warning: Option `pdfpagelabels' has already been used,
(hyperref)                setting the option has no effect on input line 60.


Package hyperref Warning: Option `bookmarks' has already been used,
(hyperref)                setting the option has no effect on input line 60.


Package hyperref Warning: Option `hyperindex' has already been used,
(hyperref)                setting the option has no effect on input line 60.

(/usr/share/texlive/texmf-dist/tex/latex/hyperref/puenc.def)

******************************************************
Stock height and width: 794.96999pt by 614.295pt
Top and edge trims: 0pt and 0pt
Page height and width: 794.96999pt by 614.295pt
Text height and width: 622pt by 433pt
Spine and edge margins: 108.405pt and 72.26999pt
Upper and lower margins: 108.405pt and 64.56499pt
Headheight and headsep: 12pt and 24.13501pt
Footskip: 25.29494pt
Columnsep and columnseprule: 10pt and 0pt
Marginparsep and marginparwidth: 7pt and 58.26999pt
Sidecapsep and sidecapwidth: 7pt and 128pt
Sidebarhsep and sidebarwidth: 7pt and 128pt
Sidebarvsep and sidebartopsep: 12pt and 0pt
Sidebarheight: 548.39996pt
Sidefoothsep and sidefootwidth: 7pt and 128pt
Sidefootvsep and sidefootheight: 12pt and 548.39996pt
******************************************************

) (/usr/share/texlive/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/share/texlive/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/share/texlive/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/share/texlive/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)))
(./custom.sty)/usr/bin/pygmentize
 (./Issuetest.aux)
(/usr/share/texlive/texmf-dist/tex/latex/base/ts1cmr.fd)
(/usr/share/texlive/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/share/texlive/texmf-dist/tex/latex/oberdiek/epstopdf-base.sty
(/usr/share/texlive/texmf-dist/tex/latex/oberdiek/grfext.sty)
(/usr/share/texlive/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/usr/share/texlive/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/share/texlive/texmf-dist/tex/generic/oberdiek/gettitlestring.sty))
Redoing nameref's sectioning
Redoing nameref's label
(./Issuetest.out) (./Issuetest.out)(load luc: /home/zeptodoctor/.texlive2017/te
xmf-var/luatex-cache/generic/fonts/otl/lmroman6-regular.luc)
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/share/texlive/texmf-dist/tex/latex/amsfonts/umsb.fd) (./Issuetest.toc(loa
d luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex-cache/generic/fonts/otl/
lmroman7-regular.luc)(load luc: /home/zeptodoctor/.texlive2017/texmf-var/luatex
-cache/generic/fonts/otl/lmroman5-regular.luc)) [1{/var/lib/texmf/fonts/map/pdf
tex/updmap/pdftex.map}] [2] [1] [2] [3] [4]

Package hyperref Warning: Difference (2) between bookmark levels is greater 
(hyperref)                than one, level fixed on input line 53.

[5] [6]
Overfull \hbox (80.91873pt too wide) in paragraph at lines 90--91
 [][] 
[7] [8<./Lena.png>] [9] [10] [11] [12]
! Undefined control sequence.
<argument> guides\Lena 
            
l.109 \includegraphics{guides\Lena.png}
                                     
! Undefined control sequence.
<write> 
LaTeX Warning: File `guides\Lena 
                                  .png' not found\on@line .
l.109 \includegraphics{guides\Lena.png}
                                     

LaTeX Warning: File `guides.png' not found on input line 109.


! Package luatex.def Error: File `guides.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.109 \includegraphics{guides\Lena.png}
                                     
[13] [14] [15] [16]
! Undefined control sequence.
<argument> guides\Lena 
            
l.125 \includegraphics{guides\Lena.png}
                                     
! Undefined control sequence.
<write> 
LaTeX Warning: File `guides\Lena 
                                  .png' not found\on@line .
l.125 \includegraphics{guides\Lena.png}
                                     

LaTeX Warning: File `guides.png' not found on input line 125.


! Package luatex.def Error: File `guides.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.125 \includegraphics{guides\Lena.png}
                                     
[17] [18] [19] [20]
! Undefined control sequence.
<argument> infos\Lena 
           
l.154 \includegraphics{infos\Lena.png}
                                    
! Undefined control sequence.
<write> 
LaTeX Warning: File `infos\Lena 
                                 .png' not found\on@line .
l.154 \includegraphics{infos\Lena.png}
                                    

LaTeX Warning: File `infos.png' not found on input line 154.


! Package luatex.def Error: File `infos.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.154 \includegraphics{infos\Lena.png}
                                    
[21] [22]
! Undefined control sequence.
<argument> infos\old 
          \Lena 
l.173 \includegraphics{infos\old\Lena.png}
                                        
! Undefined control sequence.
<argument> infos\old \Lena 
                
l.173 \includegraphics{infos\old\Lena.png}
                                        
! Undefined control sequence.
<write> 
LaTeX Warning: File `infos\old 
                                \Lena .png' not found\on@line .
l.173 \includegraphics{infos\old\Lena.png}
                                        
! Undefined control sequence.
<write> 
LaTeX Warning: File `infos\old \Lena 
                                      .png' not found\on@line .
l.173 \includegraphics{infos\old\Lena.png}
                                        

LaTeX Warning: File `infos.png' not found on input line 173.


! Package luatex.def Error: File `infos.png' not found: using draft setting.

See the luatex.def package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.173 \includegraphics{infos\old\Lena.png}
                                        
[23] (./Issuetest.aux))
(see the transcript file for additional information)
 1175 words of node memory still in use:
   6 hlist, 2 vlist, 2 rule, 2 glue, 1 kern, 7 attribute, 194 glue_spec, 7 attr
ibute_list, 2 write nodes
   avail lists: 1:1,2:563,3:102,4:41,5:148,6:722,7:297,8:34,9:154,10:6,11:84
</usr/share/fonts/robotomono/RobotoMono-Regular.ttf></usr/share/fonts/truetype/
lato/Lato-Italic.ttf></usr/share/fonts/truetype/lato/Lato-Bold.ttf></usr/share/
fonts/truetype/lato/Lato-Regular.ttf>
Output written on Issuetest.pdf (25 pages, 797546 bytes).
Transcript written on Issuetest.log.
Latexmk: Errors, in force_mode: so I tried finishing targets
```

