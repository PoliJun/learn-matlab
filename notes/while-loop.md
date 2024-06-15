In MATLAB, `while` loops are used to repeat a set of statements as long as a condition remains true. The loop continues to execute as long as the specified condition evaluates to true. `while` loops are useful when the number of iterations is not known beforehand and depends on a condition being met during execution.

### Syntax

```matlab
while condition
    statements
end
```

-   `condition`: A logical expression that is evaluated before each iteration of the loop. If the condition is true, the loop body is executed. If the condition is false, the loop terminates.
-   `statements`: The block of code to be executed as long as the condition is true.

### Example Usage

#### Basic `while` Loop

```matlab
count = 1;
while count <= 5
    disp(['Count is: ', num2str(count)]);
    count = count + 1;
end
```

Output:

```
Count is: 1
Count is: 2
Count is: 3
Count is: 4
Count is: 5
```

#### Using `while` Loop to Sum Elements Until a Condition is Met

```matlab
sum = 0;
n = 1;
while sum < 10
    sum = sum + n;
    disp(['n: ', num2str(n), ', sum: ', num2str(sum)]);
    n = n + 1;
end
```

Output:

```
n: 1, sum: 1
n: 2, sum: 3
n: 3, sum: 6
n: 4, sum: 10
```

#### Example with User Input

```matlab
userInput = input('Enter a number greater than 0 (enter 0 to stop): ');
while userInput > 0
    disp(['You entered: ', num2str(userInput)]);
    userInput = input('Enter a number greater than 0 (enter 0 to stop): ');
end
disp('Stopped as the user entered 0.');
```

### Practical Example: Factorial Calculation

```matlab
n = 5; % Number to calculate the factorial of
factorial = 1;
i = 1;
while i <= n
    factorial = factorial * i;
    i = i + 1;
end
disp(['Factorial of ', num2str(n), ' is ', num2str(factorial)]);
```

Output:

```
Factorial of 5 is 120
```

### Infinite Loops

Be cautious with `while` loops to ensure that the condition will eventually become false; otherwise, you will create an infinite loop. An infinite loop occurs when the condition always evaluates to true. You can interrupt an infinite loop in MATLAB by pressing `Ctrl+C`.

```matlab
while true
    disp('This is an infinite loop. Press Ctrl+C to stop.');
end
```

### Using `break` to Exit a `while` Loop

You can use the `break` statement to exit a `while` loop prematurely based on a condition.

```matlab
count = 1;
while count <= 10
    disp(['Count is: ', num2str(count)]);
    if count == 5
        disp('Breaking out of the loop at count = 5');
        break;
    end
    count = count + 1;
end
```

Output:

```
Count is: 1
Count is: 2
Count is: 3
Count is: 4
Count is: 5
Breaking out of the loop at count = 5
```

### Summary

-   **Syntax**: `while condition, statements, end`
-   **Use Cases**: When the number of iterations is not known beforehand and depends on a runtime condition.
-   **Caution**: Ensure the condition will eventually become false to avoid infinite loops.
-   **Interrupt**: Use `Ctrl+C` to interrupt an infinite loop in MATLAB.
-   **Exit Prematurely**: Use `break` to exit a loop based on a condition.

Using `while` loops effectively allows for flexible and dynamic repetition of code based on conditions that are evaluated at runtime. This makes `while` loops particularly useful in scenarios where the termination condition is dependent on user input, sensor data, or other runtime factors.
