In MATLAB, anonymous functions are a way to define simple functions without having to create a separate function file. They are useful for creating short, simple functions that can be defined in a single line of code. Here’s a detailed explanation and examples of how to use anonymous functions.

### Defining Anonymous Functions

An anonymous function is defined using the `@` operator followed by a list of input arguments and the function expression.

#### Syntax

```matlab
f = @(arglist) expression;
```

-   `f`: The handle to the anonymous function.
-   `arglist`: A comma-separated list of input arguments.
-   `expression`: A single MATLAB expression that operates on the input arguments.

#### Examples

1. **Single Input Argument**:

    ```matlab
    square = @(x) x.^2;
    result = square(5);
    % result = 25
    ```

2. **Multiple Input Arguments**:
    ```matlab
    add = @(x, y) x + y;
    result = add(3, 4);
    % result = 7
    ```

### Using Anonymous Functions

Anonymous functions can be used just like any other function. You can pass them as arguments to other functions, store them in variables, or use them in array operations.

#### Examples

1. **Passing to Another Function**:

    ```matlab
    integralResult = integral(@(x) x.^2, 0, 1);
    % integralResult is the integral of x^2 from 0 to 1
    ```

2. **Storing in Variables**:

    ```matlab
    functionsArray = {@(x) x.^2, @(x) x.^3, @(x) sqrt(x)};
    result1 = functionsArray{1}(4);
    result2 = functionsArray{2}(4);
    result3 = functionsArray{3}(4);
    % result1 = 16
    % result2 = 64
    % result3 = 2
    ```

3. **Array Operations**:
    ```matlab
    x = 1:5;
    square = @(x) x.^2;
    y = square(x);
    % y = [1, 4, 9, 16, 25]
    ```

### Combining Anonymous Functions

Anonymous functions can call other anonymous functions, making it possible to create complex expressions.

#### Example

```matlab
f1 = @(x) x + 2;
f2 = @(x) x.^2;
combinedFunction = @(x) f2(f1(x));
result = combinedFunction(3);
% result = (3 + 2)^2 = 25
```

### Practical Use Cases

1. **Plotting**:

    ```matlab
    f = @(x) sin(x);
    f2 = @(x) cos(x);
    x = linspace(0, 2*pi, 100);
    plot(x, f(x), x, f2(x));
    legend('sin(x)', 'cos(x)');
    ```

2. **Optimization**:

    ```matlab
    objective = @(x) x(1)^2 + x(2)^2;
    [x, fval] = fminunc(objective, [1, 1]);
    % x = [0, 0]
    % fval = 0
    ```

3. **Root Finding**:
    ```matlab
    equation = @(x) x.^2 - 4;
    root = fzero(equation, 1);
    % root = 2
    ```

### Summary

-   **Definition**: Use the `@` operator to create anonymous functions.
-   **Single Line**: Anonymous functions are defined in a single line.
-   **Usage**: Can be passed as arguments, stored in variables, and used in array operations.
-   **Complexity**: Can combine multiple anonymous functions to create complex expressions.
-   **Applications**: Useful for plotting, optimization, root finding, and more.

### Example: Combining Concepts

Here’s a more complex example that combines several of these concepts:

```matlab
% Define anonymous functions
f = @(x) exp(-x) .* sin(2*pi*x);
g = @(x) exp(-x) .* cos(2*pi*x);

% Define x range
x = linspace(0, 5, 100);

% Plot the functions
figure;
plot(x, f(x), 'r-', 'LineWidth', 2);
hold on;
plot(x, g(x), 'b--', 'LineWidth', 2);
hold off;
title('Damped Sinusoidal Functions');
xlabel('x');
ylabel('f(x), g(x)');
legend('f(x) = exp(-x) * sin(2\pi x)', 'g(x) = exp(-x) * cos(2\pi x)');
grid on;
```

In this example, we define two anonymous functions `f` and `g` and plot them on the same graph. The functions represent damped sinusoidal waves, demonstrating the flexibility and power of anonymous functions in MATLAB.
