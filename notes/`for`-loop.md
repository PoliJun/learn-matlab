In MATLAB, a `for` loop is used to repeat a group of statements a fixed, predetermined number of times. This loop is useful for iterating over arrays or performing repetitive tasks.

### Syntax

```matlab
for index = values
    % Statements to execute
end
```

-   `index` is the loop variable that takes on the value of each element in `values`.
-   `values` is an array or a range that specifies the values `index` will take on.
-   The statements inside the loop are executed once for each value of `index`.

### Examples

#### Example 1: Basic `for` Loop

```matlab
for i = 1:5
    disp(['Iteration: ', num2str(i)]);
end
```

Output:

```
Iteration: 1
Iteration: 2
Iteration: 3
Iteration: 4
Iteration: 5
```

#### Example 2: Looping Through a Vector

```matlab
vec = [10, 20, 30, 40, 50];
for i = 1:length(vec)
    disp(['Element ', num2str(i), ': ', num2str(vec(i))]);
end
```

Output:

```
Element 1: 10
Element 2: 20
Element 3: 30
Element 4: 40
Element 5: 50
```

#### Example 3: Using `for` Loop with Arrays

```matlab
A = [1, 2; 3, 4; 5, 6];
[m, n] = size(A);
for i = 1:m
    for j = 1:n
        disp(['Element (', num2str(i), ',', num2str(j), '): ', num2str(A(i, j))]);
    end
end
```

Output:

```
Element (1,1): 1
Element (1,2): 2
Element (2,1): 3
Element (2,2): 4
Element (3,1): 5
Element (3,2): 6
```

### Practical Applications

1. **Summing Elements in an Array**:

    ```matlab
    vec = [1, 2, 3, 4, 5];
    total = 0;
    for i = 1:length(vec)
        total = total + vec(i);
    end
    disp(['Total sum: ', num2str(total)]);
    ```

2. **Generating a Sequence**:

    ```matlab
    n = 10;
    fib = zeros(1, n);
    fib(1) = 1;
    fib(2) = 1;
    for i = 3:n
        fib(i) = fib(i-1) + fib(i-2);
    end
    disp(fib);
    ```

3. **Matrix Operations**:

    ```matlab
    A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
    B = zeros(size(A));
    [m, n] = size(A);
    for i = 1:m
        for j = 1:n
            B(i, j) = A(i, j)^2;
        end
    end
    disp(B);
    ```

### Nested `for` Loops

You can nest `for` loops inside each other to perform more complex operations, such as iterating over multi-dimensional arrays.

```matlab
for i = 1:3
    for j = 1:3
        disp(['i: ', num2str(i), ', j: ', num2str(j)]);
    end
end
```

Output:

```
i: 1, j: 1
i: 1, j: 2
i: 1, j: 3
i: 2, j: 1
i: 2, j: 2
i: 2, j: 3
i: 3, j: 1
i: 3, j: 2
i: 3, j: 3
```

### Summary

-   The `for` loop is used for repeating a set of statements a specified number of times.
-   It iterates over a specified range or array.
-   Useful for tasks like iterating over arrays, performing repetitive calculations, and generating sequences.
-   Nested `for` loops allow for more complex operations, such as iterating over multi-dimensional arrays.

### Example Usage

Here's a complete example that demonstrates the use of a `for` loop in a practical context:

```matlab
% Define an array
array = [2, 4, 6, 8, 10];

% Initialize a variable to store the sum
sum = 0;

% Loop through the array and calculate the sum
for i = 1:length(array)
    sum = sum + array(i);
end

% Display the result
disp(['Sum of array elements: ', num2str(sum)]);
```

Output:

```
Sum of array elements: 30
```

Feel free to ask if you have further questions or need more specific examples related to the `for` loop in MATLAB!
