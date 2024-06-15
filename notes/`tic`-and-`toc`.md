In MATLAB, `tic` and `toc` are functions used to measure the elapsed time between the two commands. They are useful for benchmarking and performance analysis of code.

### `tic` and `toc` Usage

-   `tic`: Starts a stopwatch timer.
-   `toc`: Reads the elapsed time since the last `tic`.

### Syntax

```matlab
tic
% Code whose execution time you want to measure
toc
```

### Examples

#### Example 1: Basic Usage

```matlab
tic
pause(2);  % Pauses the execution for 2 seconds
elapsedTime = toc;
disp(['Elapsed time: ', num2str(elapsedTime), ' seconds']);
```

Output:

```
Elapsed time: 2.0000 seconds
```

#### Example 2: Measuring a Loop's Execution Time

```matlab
tic
sum = 0;
for i = 1:1000000
    sum = sum + i;
end
elapsedTime = toc;
disp(['Elapsed time: ', num2str(elapsedTime), ' seconds']);
```

Output:

```
Elapsed time: 0.1234 seconds
```

(Note: The actual elapsed time will vary based on your system's performance.)

#### Example 3: Storing Multiple Timings

You can store multiple timings using `tic` and `toc` with output arguments.

```matlab
tStart = tic;
pause(1);
elapsedTime1 = toc(tStart);
disp(['Elapsed time for pause(1): ', num2str(elapsedTime1), ' seconds']);

tStart = tic;
pause(2);
elapsedTime2 = toc(tStart);
disp(['Elapsed time for pause(2): ', num2str(elapsedTime2), ' seconds']);
```

Output:

```
Elapsed time for pause(1): 1.0000 seconds
Elapsed time for pause(2): 2.0000 seconds
```

#### Example 4: Using `toc` without Arguments

If you don't capture the output of `tic` and `toc`, `toc` will display the elapsed time directly.

```matlab
tic
pause(1.5);
toc
```

Output:

```
Elapsed time is 1.5000 seconds.
```

### Practical Applications

1. **Benchmarking Code**: Compare the performance of different algorithms or functions.

    ```matlab
    % Algorithm 1
    tic
    result1 = someAlgorithm1(data);
    time1 = toc;

    % Algorithm 2
    tic
    result2 = someAlgorithm2(data);
    time2 = toc;

    % Compare times
    disp(['Time for Algorithm 1: ', num2str(time1), ' seconds']);
    disp(['Time for Algorithm 2: ', num2str(time2), ' seconds']);
    ```

2. **Performance Optimization**: Identify slow sections of code to optimize.

    ```matlab
    % Section 1
    tic
    processPart1(data);
    timePart1 = toc;

    % Section 2
    tic
    processPart2(data);
    timePart2 = toc;

    % Display times
    disp(['Time for Part 1: ', num2str(timePart1), ' seconds']);
    disp(['Time for Part 2: ', num2str(timePart2), ' seconds']);
    ```

3. **Real-Time Applications**: Ensure code meets timing requirements in real-time systems.

### Summary

-   **`tic`**: Starts a stopwatch timer to measure elapsed time.
-   **`toc`**: Reads the elapsed time since the last `tic` and can display or return it.
-   Useful for benchmarking, performance analysis, and timing critical code sections.
-   Can be used with or without output arguments to store or display elapsed time.

### Example Usage

Here is a complete example that measures the execution time of a function and a loop:

```matlab
% Start the timer
tic

% Function call
result = magic(1000);

% Measure elapsed time
elapsedTime1 = toc;
disp(['Elapsed time for magic function: ', num2str(elapsedTime1), ' seconds']);

% Start the timer again
tic

% Loop
sum = 0;
for i = 1:1000000
    sum = sum + i;
end

% Measure elapsed time
elapsedTime2 = toc;
disp(['Elapsed time for loop: ', num2str(elapsedTime2), ' seconds']);
```

Output:

```
Elapsed time for magic function: 0.1234 seconds
Elapsed time for loop: 0.5678 seconds
```

(Note: The actual elapsed time will vary based on your system's performance.)

Feel free to ask if you have further questions or need more specific examples related to using `tic` and `toc` in MATLAB!
