# Learn MATLAB

## Matrix Laboratory

Matrices and Vectors

-   vertical array
    `x'`
-   horizontal array

### `linspace` Function

**Definition**:
The `linspace` function in MATLAB generates linearly spaced vectors. It's particularly useful when you need to create a vector with a specified number of points evenly spaced between a starting and an ending value.

**Syntax**:

```matlab
y = linspace(a, b)
y = linspace(a, b, n)
```

-   `a` is the starting value.
-   `b` is the ending value.
-   `n` is the number of points you want in the vector. If `n` is omitted, `linspace` generates 100 points by default.

### Examples

1. **Basic Usage**:

    ```matlab
    y = linspace(1, 10);
    ```

    This creates a vector `y` with 100 points linearly spaced between 1 and 10.

2. **Specifying the Number of Points**:
    ```matlab
    y = linspace(1, 10, 5);
    ```
    This creates a vector `y` with 5 points linearly spaced between 1 and 10. The result will be:
    ```
    y = [1, 3.25, 5.5, 7.75, 10]
    ```

### Practical Applications

1. **Plotting a Function**:
   If you want to plot a function smoothly, you can use `linspace` to generate the x-coordinates.

    ```matlab
    x = linspace(0, 2*pi, 100);
    y = sin(x);
    plot(x, y);
    title('Sine Wave');
    xlabel('x');
    ylabel('sin(x)');
    ```

2. **Interpolation**:
   When you have data points and you want to interpolate values between them, `linspace` can help create the intermediate points.

    ```matlab
    x = [0, 1, 2];
    y = [0, 1, 4];
    xi = linspace(0, 2, 50);
    yi = interp1(x, y, xi, 'linear');
    plot(x, y, 'o', xi, yi, '-');
    ```

3. **Creating a Time Vector**:
   For simulations or signal processing, you often need a time vector with a specific duration and sampling rate.
    ```matlab
    t = linspace(0, 1, 1000);  % 1 second duration with 1000 samples
    f = 5;                     % Frequency of 5 Hz
    y = sin(2 * pi * f * t);   % Sine wave signal
    plot(t, y);
    title('5 Hz Sine Wave');
    xlabel('Time (s)');
    ylabel('Amplitude');
    ```

### Summary

-   `linspace` is used to create a vector of evenly spaced points between a specified start and end value.
-   It is useful for plotting, interpolation, creating time vectors, and more.
-   You can specify the number of points in the vector to control the resolution of your data.

Feel free to ask if you have more questions or need further examples!

### Arrays in MATLAB

**Definition**:
An array is a collection of numbers arranged into rows and columns, often used for storing data and performing various mathematical operations.

### Creating Arrays

1. **Row Vector**:

    ```matlab
    rowVec = [1, 2, 3, 4];
    % or
    rowVec = [1 2 3 4];
    ```

2. **Column Vector**:

    ```matlab
    colVec = [1; 2; 3; 4];
    ```

3. **Matrix**:
    ```matlab
    mat = [1, 2, 3; 4, 5, 6; 7, 8, 9];
    ```

### Accessing Array Elements

1. **Single Element**:

    ```matlab
    element = mat(2, 3);  % Access the element in the 2nd row and 3rd column
    ```

2. **Entire Row**:

    ```matlab
    row = mat(2, :);  % Access the entire 2nd row
    ```

3. **Entire Column**:
    ```matlab
    col = mat(:, 3);  % Access the entire 3rd column
    ```

### Modifying Arrays

1. **Change an Element**:

    ```matlab
    mat(2, 3) = 10;  % Change the element in the 2nd row and 3rd column to 10
    ```

2. **Add a Row**:

    ```matlab
    newRow = [10, 11, 12];
    mat = [mat; newRow];
    ```

3. **Add a Column**:
    ```matlab
    newCol = [10; 11; 12; 13];
    mat = [mat, newCol];
    ```

### Operations on Rows and Columns

1. **Sum of Elements**:

    ```matlab
    rowSum = sum(mat(2, :));  % Sum of elements in the 2nd row
    colSum = sum(mat(:, 3));  % Sum of elements in the 3rd column
    ```

2. **Mean of Elements**:

    ```matlab
    rowMean = mean(mat(2, :));  % Mean of elements in the 2nd row
    colMean = mean(mat(:, 3));  % Mean of elements in the 3rd column
    ```

3. **Maximum and Minimum**:
    ```matlab
    rowMax = max(mat(2, :));  % Maximum element in the 2nd row
    colMin = min(mat(:, 3));  % Minimum element in the 3rd column
    ```

### Example: Working with Rows of Arrays

1. **Creating a Matrix and Accessing Rows**:

    ```matlab
    A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
    firstRow = A(1, :);  % Access the first row
    secondRow = A(2, :); % Access the second row
    ```

2. **Performing Operations on Rows**:

    ```matlab
    % Sum of the first row
    sumFirstRow = sum(firstRow);

    % Mean of the second row
    meanSecondRow = mean(secondRow);

    % Adding two rows
    rowSum = firstRow + secondRow;
    ```

3. **Plotting Rows**:
    ```matlab
    % Plotting the first and second rows as separate lines
    figure;
    plot(1:3, firstRow, '-o', 'DisplayName', 'First Row');
    hold on;
    plot(1:3, secondRow, '-x', 'DisplayName', 'Second Row');
    xlabel('Column Index');
    ylabel('Value');
    title('Rows of the Matrix A');
    legend;
    hold off;
    ```

### Summary

-   Arrays in MATLAB can be vectors or matrices.
-   You can access and manipulate specific elements, rows, or columns.
-   Common operations include summing, finding the mean, and plotting.
-   Arrays are fundamental in MATLAB for data storage and manipulation.

Feel free to ask if you need more specific examples or further explanation on any topic!

### Element-wise Operations

Here are some common element-wise operations and their usage:

1. **Element-wise Multiplication**:

    ```matlab
    A = [1, 2, 3];
    B = [4, 5, 6];
    C = A .* B;  % C = [4, 10, 18]
    ```

2. **Element-wise Division**:

    ```matlab
    A = [10, 20, 30];
    B = [2, 4, 5];
    C = A ./ B;  % C = [5, 5, 6]
    ```

3. **Element-wise Power**:
    ```matlab
    A = [2, 3, 4];
    B = [1, 2, 3];
    C = A .^ B;  % C = [2, 9, 64]
    ```

### Examples

1. **Element-wise Addition** (though the `.` is not necessary for addition and subtraction, as they are inherently element-wise):

    ```matlab
    A = [1, 2, 3];
    B = [4, 5, 6];
    C = A + B;  % C = [5, 7, 9]
    ```

2. **Element-wise Multiplication**:

    ```matlab
    A = [1, 2, 3];
    B = [4, 5, 6];
    C = A .* B;  % C = [4, 10, 18]
    ```

3. **Element-wise Division**:

    ```matlab
    A = [10, 20, 30];
    B = [2, 4, 5];
    C = A ./ B;  % C = [5, 5, 6]
    ```

4. **Element-wise Power**:

    ```matlab
    A = [2, 3, 4];
    B = [1, 2, 3];
    C = A .^ B;  % C = [2, 9, 64]
    ```

5. **Element-wise Logical Operations**:
    ```matlab
    A = [1, 0, 1];
    B = [0, 1, 1];
    C = A & B;  % C = [0, 0, 1] (element-wise AND)
    D = A | B;  % D = [1, 1, 1] (element-wise OR)
    ```

### Applying Element-wise Operations on Matrices

1. **Matrix Element-wise Multiplication**:

    ```matlab
    A = [1, 2; 3, 4];
    B = [5, 6; 7, 8];
    C = A .* B;  % C = [5, 12; 21, 32]
    ```

2. **Matrix Element-wise Division**:

    ```matlab
    A = [10, 20; 30, 40];
    B = [2, 4; 5, 8];
    C = A ./ B;  % C = [5, 5; 6, 5]
    ```

3. **Matrix Element-wise Power**:
    ```matlab
    A = [2, 3; 4, 5];
    B = [1, 2; 3, 4];
    C = A .^ B;  % C = [2, 9; 64, 625]
    ```

### Summary

-   The `.` is used to perform element-wise operations in MATLAB.
-   Common element-wise operations include `.*`, `./`, and `.^` for multiplication, division, and power respectively.
-   Element-wise operations apply the specified operation to corresponding elements in arrays or matrices.

Understanding the usage of the dot operator is crucial for working efficiently with arrays and matrices in MATLAB. If you need more examples or have any questions, feel free to ask!
