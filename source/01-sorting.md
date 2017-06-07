# Analysis of Sorting Algorithms

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
    bar width=.5cm,
    title={Runtime in ms per algorithm per \# of items},
    width=\textwidth,
    height=.8\textwidth,
    xlabel={Number of items},
    ylabel={Time in ms (less is better)},
    scaled ticks=false, tick label style={/pgf/number format/fixed},
    ytick=data,
    xtick=data,
    legend pos=north west,
    ymajorgrids=true,
    grid style=dashed,
  ]
  \addplot+[red] table[x=interval,y=sortB]{\sortdata};
  \addplot+[orange] table[x=interval,y=sortS]{\sortdata};
  \addplot+[yellow] table[x=interval,y=sortI]{\sortdata};
  \addplot+[green] table[x=interval,y=sortM]{\sortdata};
  \legend{Bubble Sort,Selection Sort,Insertion Sort,Merge Sort}
  \end{axis}
\end{tikzpicture}

## Reflection[^longnote]

We know that the complexity for the algorithms benchmarked above ---$O(n^2)$,
$O(n^2)$, $O(n^2)$ and $O(n\log_2(n))$ respectively---, and we can see that
mapped accurately in the plots above.

The first plot, the graph displayed on section 1.1, shows the increment in time
for the  _bubble_, _selection_, and _insertion_ sort algorithms as exponential.
Their curves vary greatly because `Big O` is not meant to give an accurate
description of the time, just of how it'll scale. The point being, they all
scale in a similar manner. The green line represents the _merge_ sort algorithm
which is, along with _quicksort_, considered to be the best algorithm overall.
We can barely see it scale because the plot is drawn next to the quadratic plot
of _bubble_ sort. If we look closely, though, we can see it almost resembles a
linear time complexity, but not quite.

The second plot, a bar graph displayed on section 1.2, uses the same colors and
the same data to represent, perhaps more clearly, how each algorithm fairs
amongst each other using the same dataset.

[^longnote]: Selection sort and benchmark utility code can be found Appendix A.
