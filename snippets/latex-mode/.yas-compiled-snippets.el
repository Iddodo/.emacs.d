;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
                     '(("xyaxis" "\\begin{center}\n\\begin{tikzpicture}\n  \\draw[->] (-3, 0) -- (4.2, 0) node[right] {$x$};\n  \\draw[->] (0, -3) -- (0, 4.2) node[above] {$y$};\n  \\draw[scale=0.5, domain=-3:3, smooth, variable=\\x] plot ({$1}, {\\x*\\x});\n\\end{tikzpicture}\n\\end{center}\n$0" "xy-axis" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/xy-axis" nil nil)
                       ("divs" "\\\\vert" "divides"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/vert" nil nil)
                       ("verb" "\\begin{verbatim}\n$0\n\\end{verbatim}\n" "\\begin{verbatim} ... \\end{verbatim}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/verb.yasnippet" nil nil)
                       (";." "\\\\vdots " "vdots" 'auto
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/vdots" nil nil)
                       ("use" "\\usepackage[$2]{$1}$0" "\\usepackage" nil
                        ("misc")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/use.yasnippet" nil nil)
                       ("url" "\\url{${1:$$(yas/choose-value '(\"http\" \"ftp\"))}://${2:address}}$0" "\\url" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/url.yasnippet" nil nil)
                       ("tag" "`(delete-backward-char 1)`^{\\prime}" "upper-prime"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/upper-prime" nil nil)
                       ("ul" "\\underline{$1}$0" "underline" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/underline" nil nil)
                       ("udbr" "\\underbrace{$0}_{}" "underbrace" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/underbrace-selected" nil nil)
                       ("udbrs" "\\underbrace{$0}_{\\substack{}}" "underbrace-multiline" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/underbrace-multiline" nil nil)
                       ("tt" "{\\tt $1}$0" "{\\tt ...}" nil
                        ("font")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/tt.yasnippet" nil nil)
                       ("treq" "\\triangleq" "triangleq"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/triangleq" nil nil)
                       ("trace" "\\\\trace" "trace"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/trace" nil nil)
                       ("->" "\\to" "to"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/to" nil nil)
                       ("xx" "\\\\times" "times"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/times" nil nil)
                       ("quick-plot" "\\begin{tikzpicture}\n    \\begin{axis}[\n        %xmin = -50, xmax = 50,\n        %ymin = -10, ymax = 100,\n        % xtick distance = 2.5,\n        % ytick distance = 0.5,\n        grid = both,\n        minor tick num = 1,\n        major grid style = {lightgray},\n        minor grid style = {lightgray!25},\n        width = \\textwidth,\n        height = 0.5\\textwidth]\n        \\addplot[\n        domain = -900:900,\n        samples = 200,\n        smooth,\n        thick,\n        blue,\n    ] {${1:\"plot\"$(unless yas/modified-p (read-string \"Enter plot:\"))}};\n\\end{axis}\n\\end{tikzpicture}\n$0\n" "tikz-quick-plot" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/tikz-quick-plot" nil nil)
                       ("thus" "\\\\therefore " "therefore"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/therefore" nil nil)
                       ("thm" "\\begin{theorem}[$1]\n    $2\n\\end{theorem}\n" "theorem" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/theorem" nil nil)
                       ("template-book" "\\documentclass[english,hebrew]{amsbook}\n\n\\usepackage{fontspec}\n\\input{~/.config/latex/hebrew-latex.tex}\n\n\\begin{document}\n\n$0\n\n\\end{document}\n" "technion-book-template" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/technion-book-template" nil nil)
                       ("template-art" "\\documentclass[english,hebrew]{amsart}\n\n\\usepackage{fontspec}\n\\input{~/.config/latex/hebrew-latex.tex}\n\n\\begin{document}\n\n$0\n\n\\end{document}\n" "technion-art-template" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/technion-art-template" nil nil)
                       ("tan" "\\\\tan" "tan"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/tan" nil nil)
                       ("table" "\\begin{table}[htbp]\n  \\centering\n  \\begin{tabular}{${3:format}}\n    $0\n  \\end{tabular}\n  \\caption{${1:caption}}\n  \\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n\\end{table}\n" "\\begin{table} ... \\end{table}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/table.yasnippet" nil nil)
                       ("pp" "\\supset" "supset"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/supset" nil nil)
                       ("sup" "\\\\sup{$1}$0" "supremum"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/supremum" nil nil)
                       ("sum" "\\sum_{$1}^{$2}$0" "\\sum_{n}^{}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/sum.yasnippet" nil nil)
                       ("sub*" "\\subsection*{${1:name}}\n$0" "\\subsection*" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/substar.yasnippet" nil nil)
                       ("cc" "\\subset" "subset"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/subset" nil nil)
                       ("subl" "\\subsection{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "subsection-label" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/subl.yasnippet" nil nil)
                       ("subfloat" "\\begin{figure}[ht]\n  \\centering\n  \\subfloat[${6:caption}]{\\includegraphics[$3]{figures/${1:path.png}}}${5:~}\n  \\subfloat[${7:caption}]{\\includegraphics[$4]{figures/${2:path.png}}}\n  \\caption{\\label{fig:${8:label}} $0}\n\\end{figure}\n" "subfloat" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/subfloat" nil nil)
                       ("subfig" "\\subfigure[${1:caption}]{\n  \\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n  $0\n}\n" "\\subfigure" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/subfig.yasnippet" nil nil)
                       ("sub" "\\subsection{${1:name}}\n$0" "\\subsection" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/sub.yasnippet" nil nil)
                       ("star" "`(delete-backward-char 1)`^{*}" "star"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/star" nil nil)
                       ("stackrel" "\\\\stackrel{$1}{$0}" "stackrel"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/stackrel" nil nil)
                       ("ssub*" "\\subsubsection*{${1:name}}\n$0" "\\subsubsection*" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/ssubstar.yasnippet" nil nil)
                       ("ssub" "\\subsubsection{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "\\subsubsection" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/ssub.yasnippet" nil nil)
                       ("sqrt" "\\sqrt{$0}" "square-root" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/square-root" nil nil)
                       ("span" "\\\\Span" "span"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/span" nil nil)
                       ("sin" "\\\\sin" "sin"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/sin" nil nil)
                       ("sim" "\\sim" "similarity"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/similarity" nil nil)
                       ("~~" "\\\\sim" "similar"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/similar" nil nil)
                       ("set" "\\\\left\\\\{ $0 \\\\right\\\\}" "set"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/set" nil nil)
                       ("sec*" "\\section*{${1:name}}\n$0" "\\section*" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/secstar.yasnippet" nil nil)
                       ("secl" "\\section{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "section-label" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/secl.yasnippet" nil nil)
                       ("sec" "\\section{${1:name}}\n$0" "\\section" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/sec.yasnippet" nil nil)
                       ("sc" "{\\scshape $1}$0" "{\\sc ...}" nil
                        ("font")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/sc.yasnippet" nil nil)
                       ("rvec" "\\\\begin{pmatrix} ${1:x}_{${2:1}} & ${3:\\\\dots} & $1_{${4:n}} \\\\end{pmatrix}" "row vector" 'auto
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/row vector" nil nil)
                       ("rmk" "\\begin{remark}[$1]\n$0\n\\end{remark}" "remark" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/remark" nil nil)
                       ("ref" "`(unless yas/modified-p (consult-reftex-insert-reference nil 'dont-insert))`" "\\ref" nil
                        ("references")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/ref.yasnippet" nil nil)
                       ("rcases" "\\begin{rcases*}\n$1\n\\end{rcases*}" "rcases*" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/rcases*" nil nil)
                       ("qq" "\\\\quad " "quad"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/quad" nil nil)
                       ("prf" "\\begin{proof}[\\underline{${1:הוכחה}}]\n  $0\n\\end{proof}" "proof" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/proof" nil nil)
                       ("prod" "\\prod_{$1}^{$2}$0\n" "\\prod_{n}^{}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/prod.yasnippet" nil nil)
                       ("pvec" "\\begin{pmatrix} $0  \\end{pmatrix}" "pmatrix-vector" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/pmatrix-vector" nil nil)
                       ("pmat4" "\\\\begin{pmatrix}\n${1:0} & ${2:$1} & ${3:$1} & ${4:$1}  \\\\\\\\\n${5:$1} & ${6:$1} & ${7:$1} & ${8:$1} \\\\\\\\\n${9:$1} & ${10:$1} & ${11:$1} & ${12:$1} \\\\\\\\\n${13:$1} & ${14:$1} & ${15:$1} & ${16:$1} \\\\\\\\\n\\\\end{pmatrix}" "pmatrix (4 x 4)" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/pmatrix (4 x 4)" nil nil)
                       ("pmat3" "\\\\begin{pmatrix}\n${1:0} & ${2:$1} & ${3:$1} \\\\\\\\\n${4:$1} & ${5:$1} & ${6:$1} \\\\\\\\\n${7:$1} & ${8:$1} & ${9:$1} \n\\\\end{pmatrix}" "pmatrix (3 x 3)" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/pmatrix (3 x 3)" nil nil)
                       ("pmat2" "\\\\begin{pmatrix}\n${1:0} & ${2:$1} \\\\\\\\\n${3:$1} & ${4:$1}\n \\\\end{pmatrix}" "pmatrix (2 x 2)" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/pmatrix (2 x 2)" nil nil)
                       ("perp" "\\\\perp" "perp"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/perp" nil nil)
                       ("part" "\\\\frac{\\\\partial f}{\\\\partial $0}" "partial"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/partial derivative" nil nil)
                       ("par" "\\paragraph{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "\\paragraph" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/par.yasnippet" nil nil)
                       ("ovbr" "\\overbrace{$1}^{\\text{$2}}$0" "overbrace" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/overbrace" nil nil)
                       ("o*" "\\otimes" "otimes"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/otimes" nil nil)
                       ("o+" "\\oplus" "oplus"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/oplus" nil nil)
                       ("nEE" "\\\\nexists" "notexists"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/notexists" nil nil)
                       ("notin" "\\\\not\\\\in" "not in"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/not in" nil nil)
                       ("neq" "\\\\ne" "not equal"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/not equal" nil nil)
                       ("norm" "\\|$0\\|" "norm"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/norm" nil nil)
                       (";;" "\\\\\\\\\n`(save-excursion (previous-line)(make-string (current-indentation) ?\\s))`$0" "newline"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/newline" nil nil)
                       ("nabl" "\\\\nabla" "nabla"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/nabla" nil nil)
                       ("minipage" "\\begin{minipage}[${1:htbp}]{${2:1.0}${3:\\linewidth}}\n  $0\n\\end{minipage}" "\\begin{minipage}[position][width] ... \\end{minipage}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/minipage.yasnippet" nil nil)
                       ("max" "\\\\max" "max"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/max" nil nil)
                       ("matrix" "\\begin{${1:$$(yas/choose-value '(\"pmatrix\" \"bmatrix\" \"Bmatrix\" \"vmatrix\" \"Vmatrix\" \"smallmatrix\"))}} $0 \\end{$1}" "\\begin{matrix} ... \\end{}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/matrix.yasnippet" nil nil)
                       ("bbr" "\\mathbb{R}$0" "mathbb-r" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/mathbb-r" nil nil)
                       ("bbq" "\\mathbb{R}$0\n" "mathbb-q" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/mathbb-q" nil nil)
                       ("bbn" "\\mathbb{N}$0" "mathbb-N" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/mathbb-n" nil nil)
                       ("bb" "\\mathbb{$1}$0" "mathbb" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/mathbb" nil nil)
                       ("math" "\\[\n$1\n\\]\n" "displaymath \\[ ... \\]" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/math.yasnippet" nil nil)
                       ("@" "\\text{$0}" "math-text" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/math-text" nil nil)
                       ("((" "\\\\left( $1 \\\\right) $0" "math-parenthesis" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/math-parenthesis" nil nil)
                       ("log" "\\\\log" "log"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/log" nil nil)
                       ("ln" "\\\\ln" "ln"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/ln" nil nil)
                       ("lst" "\\begin{lstlisting}[float,label=lst:${1:label},caption=nextHopInfo: ${2:caption}]\n$0\n\\end{lstlisting}" "listing" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/listing" nil nil)
                       ("limsup" "\\\\limsup_{${1:n} \\\\to ${2:\\\\infty}} $0" "limsup"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/limsup" nil nil)
                       ("lim" "\\\\lim_{$0}" "limit"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/limit" nil nil)
                       ("limit" "\\lim_{$1}$0\n" "\\lim_{n}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/lim.yasnippet" nil nil)
                       ("letter" "\\documentclass{letter}\n\\signature{${1:Foo Bar}}\n\\address{${2:Address line 1 \\\\\\\\ \nAddress line 2 \\\\\\\\\nAddress line 3}}\n\\begin{document}\n \n\\begin{letter}\n{${3:Recipient's address}}\n\n\\opening{Dear ${4:Sir}:}\n\n$0\n \n\\closing{Yours Sincerely,}\n \n\\end{letter}\n \n\\end{document}\n\n" "\\documentclass{letter} ..." nil
                        ("skeleton")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/letter.yasnippet" nil nil)
                       ("<<" "\\\\ll" "lesser lesser"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/lesser lesser" nil nil)
                       ("leq" "\\\\le$0" "less or equal"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/less or equal" nil nil)
                       ("<->" "\\\\leftrightarrow\n" "leftrightarrow"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/leftrightarrow" nil nil)
                       ("lab" "\\label{${1:label$(unless yas/modified-p (reftex-label nil 'dont-insert))}}$0\n" "\\label" nil
                        ("references")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/label.yasnippet" nil nil)
                       ("ker" "\\\\ker" "kernel"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/kernel" nil nil)
                       ("item" "\\begin{itemize}\n\\item $0\n\\end{itemize}\n" "\\begin{itemize} ... \\end{itemize}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/item.yasnippet" nil nil)
                       ("itd" "\\item[${1:label}] $0" "\\item[] (description)" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/itd.yasnippet" nil nil)
                       ("it" "\\item $0" "\\item" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/it.yasnippet" nil nil)
                       ("inv" "`(delete-backward-char 1)`^{-1}" "inverse"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/inverse" nil nil)
                       ("cap" "\\\\cap" "intersection"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/intersection" nil nil)
                       ("integ" "\\\\${1:$$(yas/choose-value '(\"int\" \"oint\" \"iint\" \"iiint\" \"iiiint\" \"idotsint\"))}$0" "Indefinite integral (all)"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/int.yasnippet" nil nil)
                       ("inf" "\\\\inf{$1}$0" "infimum"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/infimum" nil nil)
                       ("ig" "\\includegraphics${1:[$2]}{$0}" "includegraphics" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/includegraphics" nil nil)
                       ("inn" "\\\\in" "in"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/in" nil nil)
                       ("=>" "\\implies$0" "implies"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/implies" nil nil)
                       ("<=" "\\\\impliedby $0" "implied by"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/implied by" nil nil)
                       ("miff" "$\\iff$" "if and only if outside math" 'auto nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/if and only if outside math" nil nil)
                       ("iff" "\\iff" "if and only if"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/if and only if" nil nil)
                       ("href" "\\href{${1:url}}{${2:text}}$0" "\\href{url}{text}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/href.yasnippet" nil nil)
                       ("heb" "\\begin{hebrew}\n    $1\n\\end{hebrew}\n$0" "hebrew-environment" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/hebrew-environment" nil nil)
                       ("hat" "`(condition-case nil (progn (backward-sexp) (kill-sexp) (delete-char 1)) (error (setq argument 'nil)))`\\\\hat{`(if argument (current-kill 0))`}$0" "hat"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        ((argument 't))
                        "/Users/ido/.doom.d/yasnippets/latex-mode/hat" nil nil)
                       ("geq" "\\\\ge" "greater or equal"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/greater or equal" nil nil)
                       (">>" "\\\\gg" "greater greater"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/greater greater" nil nil)
                       ("graphics" "\\includegraphics[width=${1:\\linewidth}]{${2:file}}" "\\includegraphics" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/graphics.yasnippet" nil nil)
                       ("goesto" "\\underset{$1{n \\to \\infty}}{\\longrightarrow} {$2} $0" "goes-to" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/goes-to" nil nil)
                       ("newgls" "\\newglossaryentry{$1}{name={$1},\n  description={$2.}}\n" "\\newglossaryentry{...}{...}" nil
                        ("misc")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/gls.yasnippet" nil nil)
                       ("frame" "\\begin{frame}{${1:Frame Title$(capitalize yas-text)}}\n$0\n\\end{frame}\n" "\\begin{frame} ... \\end{frame}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/frame.yasnippet" nil nil)
                       ("frac" "\\frac{$0}{}" "\\frac{numerator}{denominator}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/frac.yasnippet" nil nil)
                       ("VV" "\\\\forall$0" "forall"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/forall" nil nil)
                       ("floor" "\\\\left\\\\lfloor $1 \\\\right\\\\rfloor $0" "floor function"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/floor function" nil nil)
                       ("fig" "\\begin{figure}[htbp]\n  \\centering\n  \\begin{english}\n    \\includesvg[width=200pt]{$1}\n  \\end{english}\n  \\caption{$2}\n\\end{figure}\n$0" "\\begin{figure} ... \\end{figure}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/fig.yasnippet" nil nil)
                       ("fabtor" "f : \\left[ a, b \\right] \\to \\mathbb{R}" "f-ab-to-R"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/f-ab-to-R" nil nil)
                       ("exp" "\\\\exp" "exp"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/exp" nil nil)
                       ("ex" "\\begin{example}\n    $0\n\\end{example}\n" "example" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/example" nil nil)
                       ("eqv" "\\\\equiv$0" "equiv"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/equiv" nil nil)
                       ("eqs" "\\begin{${1:$$(yas/choose-value '(\"align\" \"align*\" \"multline\" \"gather\" \"subequations\"))}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0\n\\end{$1}\n" "\\begin{align} ... \\end{align}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/eqs.yasnippet" nil nil)
                       ("eq" "\\begin{equation}\n\\label{${1:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0\n\\end{equation}\n" "\\begin{equation} ... \\end{equation}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/eq.yasnippet" nil nil)
                       ("eps" "\\varepsilon" "epsilon"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/epsilon" nil nil)
                       ("enum" "\\begin{enumerate}\n\\item $0\n\\end{enumerate}\n" "\\begin{enumerate} ... \\end{enumerate}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/enum.yasnippet" nil nil)
                       ("eng" "\\begin{english}\n    $1\n\\end{english}\n$0\n" "english-environment" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/english-environment" nil nil)
                       ("e" "\\emph{$0}" "emphasize" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/emphasize" nil nil)
                       ("em" "{\\em $1}$0" "{\\em ...}" nil
                        ("font")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/em.yasnippet" nil nil)
                       ("dx" "{\\mathrm{d} x}" "dx"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/dx" nil nil)
                       ("dt" "{\\mathrm{d} t}" "dt"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/dt" nil nil)
                       ("..." "\\\\ldots$0" "dots"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/dots" nil nil)
                       ("doc" "\\documentclass[$2]{${1:$$(yas/choose-value '(\"article\" \"report\" \"book\" \"letter\"))}}\n\n\\begin{document}\n$0\n\\end{document}\n" "\\documentclass" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/doc.yasnippet" nil nil)
                       ("dim" "\\\\dim" "dimension"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/dimension" nil nil)
                       ("desc" "\\begin{description}\n\\item[${1:label}] $0\n\\end{description}\n" "\\begin{description} ... \\end{description}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/desc.yasnippet" nil nil)
                       ("delt" "\\delta" "delta"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/delta" nil nil)
                       ("def" "\\begin{definition}[$1]\n  $0\n\\end{definition}" "definition" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/definition" nil nil)
                       ("int" "\\int_{$1}^{$2} $0" "integral" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/definite integral" nil nil)
                       ("ddots" "\\ddots $0" "ddots"
                        (and
                         (texmathp)
                         'auto)
                        nil
                        ((argument 't))
                        "/Users/ido/.doom.d/yasnippets/latex-mode/ddots" nil nil)
                       ("dx" "{\\mathrm{d} x}$0\n" "dx" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/d-by-dx" nil nil)
                       ("csc" "\\\\csc" "csc"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/csc" nil nil)
                       ("cot" "\\\\cot" "cot"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/cot" nil nil)
                       ("cos(" "\\\\cos \\\\left\\\\{ $1 \\\\right\\\\} $0\n" "cos-parenthesis"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/cos-parenthesis" nil nil)
                       ("cos" "\\\\cos" "cos"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/cos" nil nil)
                       ("cor" "\\begin{corollary}[$1]\n  $0\n\\end{corollary}" "corollary" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/corollary" nil nil)
                       ("coprod" "\\coprod_{$1}^{$2}$0\n" "\\coprod_{n}^{}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/coprod.yasnippet" nil nil)
                       ("bbc" "\\mathbb{C}" "complex-number-symbol" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/complex-number-symbol" nil nil)
                       ("conj" "`(delete-backward-char 1)`^{\\\\star}$0" "complex conjugate"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/complex conjugate" nil nil)
                       ("cols" "\\begin{columns}\n  \\begin{column}{.${1:5}\\textwidth}\n  $0\n  \\end{column}\n\n  \\begin{column}{.${2:5}\\textwidth}\n\n  \\end{column}\n\\end{columns}" "columns" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/columns" nil nil)
                       (",," "& $0" "column-separator"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/column-separator" nil nil)
                       ("cvec" "\\\\begin{pmatrix} ${1:x}_{${2:1}}\\\\\\\\ ${3:\\\\vdots}\\\\\\\\ $1_{${4:n}} \\\\end{pmatrix}" "column vector" 'auto
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/column vector" nil nil)
                       (":=" "\\coloneqq $0" "coloneq"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/coloneq" nil nil)
                       ("code" "\\begin{english}\n\\begin{minted}[bgcolor = minted-bg,\n               frame=lines,\n               framesep=2mm,\n               tabsize=4,\n               obeytabs,\n               showtabs]{${1:c++}}\n\n${2:code$(s-replace \"   \" \"   \" yas-text)}\n\\end{minted}\n\\end{english}\n\n$0\n" "code" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/code" nil nil)
                       ("clm" "\\begin{claim}\n    $0\n\\end{claim}\n" "claim" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/claim" nil nil)
                       ("cite" "`(unless yas-modified-p (call-interactively 'citar-insert-citation))`" "\\cite" nil
                        ("references")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/cite.yasnippet" nil nil)
                       ("choose" "{$1 \\choose $2}$0" "choose" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/choose" nil nil)
                       ("cha*" "\\chapter*{${1:name}}\n$0" "\\chapter*" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/chastar.yasnippet" nil nil)
                       ("chal" "\\chapter{${1:name}}\n\\label{${2:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n$0" "chapter-label" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/chal.yasnippet" nil nil)
                       ("cha" "\\chapter{${1:name}}\n$0" "\\chapter" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/cha.yasnippet" nil nil)
                       ("ceil" "\\\\left\\\\lceil $0 \\\\right\\\\rceil" "ceiling function"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/ceiling function" nil nil)
                       ("cases" "\\\\begin{cases}\n  $0\n\\\\end{cases}" "cases"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/cases" nil nil)
                       ("cases" "\\begin{cases}\n$0 \\\\\\\\\n\\end{cases}\n" "\\begin{cases} ... \\end{cases}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/case.yasnippet" nil nil)
                       ("bcancel" "\\bcancel{`yas-selected-text`}$0" "cancel" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/cancel" nil nil)
                       ("abtor" "\\left[ a, b \\right] \\to \\mathbb{R}$0" "bracket-to-R"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/bracket-to-R" nil nil)
                       ("bf" "{\\bf $1}$0" "{\\bf ... }" nil
                        ("font")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/bold.yasnippet" nil nil)
                       ("mat5" "\\\\begin{bmatrix}\n${1:0} & ${2:$1} & ${3:$1} & ${4:$1} & ${5:$1}  \\\\\\\\\n${6:0} & ${7:$1} & ${8:$1} & ${9:$1} & ${10:$1}  \\\\\\\\\n${11:0} & ${12:$1} & ${13:$1} & ${14:$1} & ${15:$1}  \\\\\\\\\n${16:0} & ${17:$1} & ${18:$1} & ${19:$1} & ${20:$1}  \\\\\\\\\n${21:0} & ${22:$1} & ${23:$1} & ${24:$1} & ${25:$1}  \\\\\\\\\n\\\\end{bmatrix}" "bmatrix (5 x 5)" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/bmatrix (5 x 5)" nil nil)
                       ("mat4" "\\\\begin{bmatrix}\n${1:0} & ${2:$1} & ${3:$1} & ${4:$1}  \\\\\\\\\n${5:$1} & ${6:$1} & ${7:$1} & ${8:$1} \\\\\\\\\n${9:$1} & ${10:$1} & ${11:$1} & ${12:$1} \\\\\\\\\n${13:$1} & ${14:$1} & ${15:$1} & ${16:$1} \\\\\\\\\n\\\\end{bmatrix}" "bmatrix (4 x 4)" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/bmatrix (4 x 4)" nil nil)
                       ("mat3" "\\\\begin{bmatrix}\n${1:0} & ${2:$1} & ${3:$1} \\\\\\\\\n${4:$1} & ${5:$1} & ${6:$1} \\\\\\\\\n${7:$1} & ${8:$1} & ${9:$1} \n\\\\end{bmatrix}" "bmatrix (3 x 3)" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/bmatrix (3 x 3)" nil nil)
                       ("mat2" "\\\\begin{bmatrix}\n${1:0} & ${2:$1} \\\\\\\\\n${3:$1} & ${4:$1}\n \\\\end{bmatrix}" "bmatrix (2 x 2)" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/bmatrix (2 x 2)" nil nil)
                       ("block" "\\begin{${1:$$(yas/choose-value '(\"block\" \"exampleblock\" \"alertblock\"))}}{${2:Block Title}}\n\n\\end{$1}\n" "\\begin{*block} ... \\end{*block}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/block.yasnippet" nil nil)
                       ("binom" "\\binom{${1:n}}{${2:k}}" "\\binom{n}{k}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/binom.yasnippet" nil nil)
                       ("bigop" "\\\\big${1:$$(yas/choose-value '(\"oplus\" \"otimes\" \"odot\" \"cup\" \"cap\" \"uplus\" \"sqcup\" \"vee\" \"wedge\"))}_{$2}^{$3}$0\n" "\\bigop_{n}^{}" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/bigop.yasnippet" nil nil)
                       ("big" "\\\\${1:$$(yas/choose-value '(\"big\" \"Big\" \"bigg\" \"Bigg\"))}l( $0  \\\\$1r)" "\\bigl( ... \\bigr)" nil
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/big.yasnippet" nil nil)
                       ("bib" "\\bibliographystyle{plain}\n\\bibliography{$1}$0" "\\bibliography" nil
                        ("misc")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/bib.yasnippet" nil nil)
                       ("begin" "\\begin{${1:$$(yas/choose-value (mapcar 'car (LaTeX-environment-list)))}}\n$0\n\\end{$1}" "\\begin{environment} ... \\end{environment}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/begin.yasnippet" nil nil)
                       ("beamer" "\\documentclass[xcolor=dvipsnames]{beamer}\n\n\\usepackage{graphicx,subfigure,url}\n\n% example themes\n\\usetheme{Frankfurt}\n\\usecolortheme{seahorse}\n\\usecolortheme{rose}\n\n% put page numbers\n% \\setbeamertemplate{footline}[frame number]{}\n% remove navigation symbols\n% \\setbeamertemplate{navigation symbols}{}\n\n\\title{${1:Presentation Title}}\n\\author{${2:Author Name}}\n\n\\begin{document}\n	\n\\frame[plain]{\\titlepage}\n	\n\\begin{frame}[plain]{Outline}\n	\\tableofcontents\n\\end{frame}\n	\n\\section{${3:Example Section}}\n\\begin{frame}{${4:Frame Title}}\n\n\\end{frame}\n\n\\end{document}\n" "\\documentclass{beamer} ..." nil
                        ("skeleton")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/beamer.yasnippet" nil nil)
                       ("basict" "\\documentclass[11pt]{article}\n\n\\usepackage{graphicx,amsmath,amssymb,subfigure,url,xspace}\n\n\\title{${1:title}}\n\\author{${2:Author Name}}\n\n\\begin{document}\n\\maketitle\n\n$0\n\n\\end{document}\n" "\\documentclass{article} ..." nil
                        ("skeleton")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/basict" nil nil)
                       ("bar" "`(condition-case nil (progn (backward-sexp) (kill-sexp) (delete-char 1)) (error (setq argument 'nil)))`\\\\bar{`(if argument (current-kill 0))`}$0" "bar"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        ((argument 't))
                        "/Users/ido/.doom.d/yasnippets/latex-mode/bar" nil nil)
                       ("bmsh" "\\twoheadrightarrow" "bamash" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/bamash" nil nil)
                       ("article" "\\documentclass[11pt]{article}\n\n\\usepackage{graphicx,amsmath,amssymb,subfigure,url,xspace}\n\\newcommand{\\eg}{e.g.,\\xspace}\n\\newcommand{\\bigeg}{E.g.,\\xspace}\n\\newcommand{\\etal}{\\textit{et~al.\\xspace}}\n\\newcommand{\\etc}{etc.\\@\\xspace}\n\\newcommand{\\ie}{i.e.,\\xspace}\n\\newcommand{\\bigie}{I.e.,\\xspace}\n\n\\title{${1:title}}\n\\author{${2:Author Name}}\n\n\\begin{document}\n\\maketitle\n\n\n\\bibliographystyle{${3:plain}}\n\\bibliography{${4:literature.bib}}\n\n\\end{document}\n" "\\documentclass{article} ..." nil
                        ("skeleton")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/article.yasnippet" nil nil)
                       ("arr" "\\begin{array}{$1}\n  $0\n\\end{array}\n" "\\begin{array} ... \\end{array}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/array.yasnippet" nil nil)
                       ("arctan" "\\\\arctan" "arctan"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/arctan" nil nil)
                       ("arcsin" "\\\\arcsin" "arcsin"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/arcsin" nil nil)
                       ("arcsec" "\\\\arcsec" "arcsec"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/arcsec" nil nil)
                       ("arccsc" "\\\\arccsc" "arccsc"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/arccsc" nil nil)
                       ("arccot" "\\\\arccot" "arccot"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/arccot" nil nil)
                       ("arccos" "\\\\arccos" "arccos"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/arccos" nil nil)
                       ("align*" "\\begin{align*}\n  $0\n\\end{align*}" "\\begin{align*} ... \\end{align*}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/alignstar.yasnippet" nil nil)
                       ("align" "\\begin{align}\n  $0\n\\end{align}" "\\begin{align} ... \\end{align}" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/align.yasnippet" nil nil)
                       ("dgr" "`(delete-backward-char 1)`^{\\\\dagger}$0" "adjoint"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/adjoint" nil nil)
                       ("abs" "\\begin{abstract}\n$0\n\\end{abstract}" "\\abstract" nil
                        ("sections")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/abstract.yasnippet" nil nil)
                       ("cb" "`(delete-backward-char 1)`^3$0" "^3"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/^3" nil nil)
                       ("sr" "`(delete-backward-char 1)`^{2}" "^2"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/^2" nil nil)
                       ("td" "`(backward-delete-char 1)`^{$1}" "To the power"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/To the power" nil nil)
                       ("tikzplot" "\\begin{figure}[$1]\n	\\centering\n	\\begin{tikzpicture}\n		\\begin{axis}[\n			xmin= ${2:-10}, xmax= ${3:10},\n			ymin= ${4:-10}, ymax = ${5:10},\n			axis lines = middle,\n		]\n			\\addplot[domain=$2:$3, samples=${6:100}]{$7};\n		\\end{axis}\n	\\end{tikzpicture}\n	\\caption{$8}\n	\\label{${9:\"waiting for reftex-label call...\"$(unless yas/modified-p (reftex-label nil 'dont-insert))}}\n\\end{figure}\n" "Tikz Plot" nil
                        ("environments")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/Tikz Plot" nil nil)
                       ("tvtov" "T: V \\to V" "T V to V (Linear Operator)" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/T V to V (Linear Operator)" nil nil)
                       ("rtor" "\\mathbb{R} \\to \\mathbb{R}$0" "R-to-R"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/R-to-R" nil nil)
                       ("mk" "$$0$" "Inline Math"
                        (and
                         (not
                          (texmathp))
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/Inline Math" nil nil)
                       ("/" "\\frac{$0}{}" "Fraction slash"
                        (texmathp)
                        ("math")
                        ((numerator 't))
                        "/Users/ido/.doom.d/yasnippets/latex-mode/Fraction slash" nil nil)
                       ("//" "`(condition-case nil (save-excursion (backward-sexp) (kill-sexp) (delete-char 1)) (error (setq numerator 'nil)))`\\\\frac{`(if numerator (current-kill 0))`}{$1}$0" "Fraction auto"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        ((numerator 't))
                        "/Users/ido/.doom.d/yasnippets/latex-mode/Fraction auto" nil nil)
                       ("EE" "\\\\exists" "Exists"
                        (and
                         (texmathp)
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/Exists" nil nil)
                       ("dm" "\\[\n`(save-excursion (previous-line)(make-string (current-indentation) ?\\s))`$0\n\\]\n" "Display Math"
                        (and
                         (not
                          (texmathp))
                         'auto)
                        ("math")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/Display Math" nil nil)
                       ("diag" "\\diag \\left( $0 \\right)" "diagonal"
                        (and
                         (texmathp)
                         'auto)
                        nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/Diagonal bmatrix" nil nil)
                       ("intres" "\\left. $1 \\right\\vert_{$2}^{$3}$0" "Definite integral result" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/Definite integral result" nil nil)
                       ("template" "\\input{`my-preamble-file`}\n% \\usepackage{hyperref}\n% \\hypersetup{\n%     colorlinks,\n%     citecolor=cyan,\n%     filecolor=black,\n%     linkcolor=blue,\n%     urlcolor=black}\n\n\\author{`user-full-name`\\vspace{-2ex}}\n\\title{\\vspace{-3.0cm}${1:Title$(capitalize yas-text)}\\vspace{-2ex}}\n${2:\\date{${3:\\today}}}\n\n\\begin{document}\n\n\\begingroup\n\\let\\center\\flushleft\n\\let\\endcenter\\endflushleft\n\\maketitle\n\\endgroup\n\n% \\tableofcontents\n\n$0\n\\end{document}" "Basic template" nil
                        ("skeleton")
                        nil "/Users/ido/.doom.d/yasnippets/latex-mode/Basic template" nil nil)
                       ("vec2" "\\\\begin{bmatrix} ${1:x}_{${2:1}} \\\\\\\\ ${3:$1}_{${4:2}} \\\\end{bmatrix}" "2-vector" nil nil nil "/Users/ido/.doom.d/yasnippets/latex-mode/2-vector" nil nil)))


;;; Do not edit! File generated at Mon Jan  9 16:55:34 2023
