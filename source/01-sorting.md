# Analysis of Sorting Algorithms

Selection sort and benchmark utility code can be found Appendix A.

## Sort time growth

\pgfplotstableread[col sep=semicolon,trim cells,row sep=crcr]{
  interval; sortB     ; sortS        ; sortI        ; sortM \\
  10000   ; 194       ; 49           ; 31           ; 4     \\
  50000   ; 6318      ; 1165         ; 481          ; 20    \\
  100000  ; 24193     ; 4472         ; 1742         ; 33    \\
  150000  ; 54464     ; 10321        ; 4102         ; 40    \\
  200000  ; 96889     ; 18180        ; 7429         ; 76    \\
}\sortdata

\begin{tikzpicture}
  \begin{axis}[
    title={Sorting algorithms runtime growth},
    width=\textwidth,
    height=.8\textwidth,
    scaled ticks=false, tick label style={/pgf/number format/fixed},
    xlabel={Number of items},
    ylabel={Time in ms (less is better)},
    xmin=0, xmax=200000,
    ymin=0, ymax=100000,
    xtick=data,
    ytick=data,
    legend pos=north west,
    ymajorgrids=true,
    grid style=dashed,
    every axis plot/.append style={ultra thick},
  ]
  \addplot+[red] table[x=interval,y=sortB]{\sortdata};
  \addplot+[orange] table[x=interval,y=sortS]{\sortdata};
  \addplot+[yellow] table[x=interval,y=sortI]{\sortdata};
  \addplot+[green] table[x=interval,y=sortM]{\sortdata};
  \legend{Bubble Sort,Selection Sort,Insertion Sort,Merge Sort}
  \end{axis}
\end{tikzpicture}

## Runtime Comparison

\pgfplotstableread[col sep=semicolon,trim cells,row sep=crcr]{
  algorithm      ; time  \\
  Bubble Sort    ; 96889 \\
  Selection Sort ; 18180 \\
  Insertion Sort ; 7429  \\
  Merge Sort     ; 76    \\
}\runtimedata

\begin{tikzpicture}
  \begin{axis}[
    ybar,
    bar width=1.5cm,
    title={Runtime in ms per algorithm for 200,000 items},
    width=\textwidth,
    height=.8\textwidth,
    scaled ticks=false, tick label style={/pgf/number format/fixed},
    xlabel={Algorithm},
    xticklabel style={text height=2ex},
    ylabel={Time in ms (less is better)},
    ytick=data,
    legend pos=north west,
    ymajorgrids=true,
    grid style=dashed,
    symbolic x coords={Bubble Sort,Selection Sort, Insertion Sort, Merge Sort},
    xtick={Bubble Sort,Selection Sort, Insertion Sort, Merge Sort},
  ]
  \addplot table[x=algorithm,y=time,color=red]{\runtimedata};
  \end{axis}
\end{tikzpicture}

## Reflection

> Write a short reflection on the graphs, discussing the time complexity of the
> tested algorithm in terms of the `Big (O)` notation.
