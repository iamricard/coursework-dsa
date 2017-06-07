# Appendix A{#appendix-a}

## Benchmark.java

```java
package me.rsole.util;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class Benchmark {
  private List<Thread> threads = new ArrayList<>();

  public void add(String name, Runnable computation) {
    Thread t = new Thread(
      () -> System.out.printf("%s took %s.\n", name, run(computation))
    );

    threads.add(t);
  }

  public void run() {
    for (Thread t : threads) t.run();
  }

  private String run(Runnable computation) {
    long start = System.currentTimeMillis();
    computation.run();
    long end = System.currentTimeMillis();

    return format(end - start);
  }

  private String format(long time) {
    long minutes = TimeUnit.MILLISECONDS.toMinutes(time);
    long seconds =
      TimeUnit.MILLISECONDS.toSeconds(time) -
      TimeUnit.MINUTES.toSeconds(minutes);
    long milliseconds =
      time -
      (TimeUnit.SECONDS.toMillis(seconds) +
      TimeUnit.MINUTES.toMillis(minutes));

    return String.format("%dm %ds %dms", minutes, seconds, milliseconds);
  }
}
```

## SelectionSort.java

```java
package me.rsole.sort;

import org.jetbrains.annotations.Contract;

public class SelectionSort {
  @Contract(pure = true)
  public static int[] exec(int[] xs) {
    int[] ys = xs.clone();
    int minIdx = 0;

    for (int i = 0; i < ys.length; i++) {
      for (int j = i; j < ys.length; j++) {
        if (ys[j] < ys[minIdx]) minIdx = j;
      }

      int swap = ys[i];
      ys[i] = ys[minIdx];
      ys[minIdx] = swap;
      minIdx = i + 1;
    }

    return ys;
  }
}
```
