Creating custom functions in MATLAB allows you to encapsulate code into reusable and modular units. This improves the organization of your code, reduces redundancy, and makes it easier to test and debug. MATLAB functions can accept input arguments, return output values, and can be saved in separate files or defined within scripts.

### Basic Structure of a MATLAB Function

A MATLAB function is defined using the `function` keyword followed by the function signature, which includes the output variables, the function name, and the input arguments.

#### Syntax

```matlab
function [output1, output2, ...] = functionName(input1, input2, ...)
    % Function documentation or comments
    % Code statements
end
```

-   `output1, output2, ...`: The variables that the function returns.
-   `functionName`: The name of the function.
-   `input1, input2, ...`: The input arguments to the function.

### Example of a Simple Function

#### Function to Calculate the Square of a Number

Create a file named `squareNumber.m`:

```matlab
function y = squareNumber(x)
    % squareNumber - Calculates the square of the input number
    % Input:
    %   x - The number to be squared
    % Output:
    %   y - The square of the input number

    y = x^2;
end
```

You can call this function from the MATLAB command window or another script:

```matlab
result = squareNumber(5);
disp(['The square of 5 is: ', num2str(result)]);
```

Output:

```
The square of 5 is: 25
```

### Functions with Multiple Inputs and Outputs

#### Function to Perform Basic Arithmetic Operations

Create a file named `basicArithmetic.m`:

```matlab
function [sumResult, differenceResult, productResult, quotientResult] = basicArithmetic(a, b)
    % basicArithmetic - Performs basic arithmetic operations on two numbers
    % Inputs:
    %   a - The first number
    %   b - The second number
    % Outputs:
    %   sumResult - The sum of a and b
    %   differenceResult - The difference between a and b
    %   productResult - The product of a and b
    %   quotientResult - The quotient of a divided by b

    sumResult = a + b;
    differenceResult = a - b;
    productResult = a * b;
    quotientResult = a / b;
end
```

You can call this function and capture multiple outputs:

```matlab
[a, b, c, d] = basicArithmetic(10, 5);
disp(['Sum: ', num2str(a)]);
disp(['Difference: ', num2str(b)]);
disp(['Product: ', num2str(c)]);
disp(['Quotient: ', num2str(d)]);
```

Output:

```
Sum: 15
Difference: 5
Product: 50
Quotient: 2
```

### Inline and Anonymous Functions

#### Anonymous Function

An anonymous function is a one-line function that does not require a separate file. It is defined using the `@` symbol.

```matlab
square = @(x) x^2;
result = square(7);
disp(['The square of 7 is: ', num2str(result)]);
```

Output:

```
The square of 7 is: 49
```

### Nested Functions

Nested functions are functions defined within another function. They have access to the variables of the parent function.

```matlab
function parentFunction()
    a = 5;
    b = 10;
    result = nestedFunction(a, b);
    disp(['The result is: ', num2str(result)]);

    function output = nestedFunction(x, y)
        % nestedFunction - A nested function that calculates the product
        output = x * y;
    end
end
```

Call the `parentFunction` from the command window or another script:

```matlab
parentFunction();
```

Output:

```
The result is: 50
```

### Function Handles

Function handles allow you to pass functions as arguments to other functions or store them in variables.

```matlab
handle = @squareNumber;
result = handle(6);
disp(['The square of 6 using a function handle is: ', num2str(result)]);
```

Output:

```
The square of 6 using a function handle is: 36
```

### Best Practices for Custom Functions

1. **Descriptive Names**: Use descriptive and meaningful names for your functions to indicate their purpose.
2. **Documentation**: Include comments and documentation within your functions to explain the inputs, outputs, and purpose of the function.
3. **Modularity**: Break down complex tasks into smaller, reusable functions.
4. **Error Handling**: Include error handling within your functions to manage unexpected inputs or conditions.

### Summary

-   **Definition**: Use the `function` keyword followed by the function signature.
-   **File Naming**: Save each function in a file with the same name as the function.
-   **Inputs and Outputs**: Functions can have multiple inputs and outputs.
-   **Anonymous Functions**: Use `@` to define simple, one-line functions.
-   **Nested Functions**: Define functions within other functions for scope-limited operations.
-   **Function Handles**: Use function handles to pass functions as arguments or store them in variables.

By following these guidelines, you can create efficient, modular, and maintainable MATLAB code using custom functions.
