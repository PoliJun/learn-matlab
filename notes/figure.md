The `figure` function in MATLAB is used to create a new figure window for plotting. This allows you to create multiple plots in separate windows or to specify properties for a figure. Here is a detailed explanation of the `figure` function and its usage with examples.

### Basic Syntax

1. **Create a New Figure Window**:

    ```matlab
    figure;
    ```

2. **Create a New Figure with a Specific Figure Number**:

    ```matlab
    figure(n);
    ```

    - `n`: The figure number. If a figure with this number already exists, it becomes the current figure.

3. **Create a Figure with Specific Properties**:
    ```matlab
    figure('PropertyName', PropertyValue, ...);
    ```

### Commonly Used Properties

-   **'Name'**: Sets the name of the figure window.
-   **'NumberTitle'**: Controls the display of the figure number in the title bar (logical value).
-   **'Color'**: Sets the background color of the figure.
-   **'Position'**: Specifies the position and size of the figure window.

### Examples

1. **Create a Simple Figure**:

    ```matlab
    figure;
    plot(1:10, (1:10).^2);
    title('Simple Figure');
    ```

2. **Create a Figure with a Specific Number**:

    ```matlab
    figure(2);
    plot(1:10, (1:10).^3);
    title('Figure 2');
    ```

3. **Create a Figure with Custom Properties**:

    ```matlab
    figure('Name', 'Custom Figure', 'NumberTitle', 'off', 'Color', 'w');
    plot(1:10, sqrt(1:10));
    title('Custom Figure Properties');
    ```

4. **Create and Position a Figure**:
    ```matlab
    figure('Position', [100, 100, 600, 400]);
    plot(1:10, log(1:10));
    title('Positioned Figure');
    ```

### Managing Multiple Figures

When working with multiple figures, you can use the `figure` function to switch between them or create new ones.

1. **Create Multiple Figures**:

    ```matlab
    figure(1);
    plot(1:10, sin(1:10));
    title('Figure 1: Sine');

    figure(2);
    plot(1:10, cos(1:10));
    title('Figure 2: Cosine');
    ```

2. **Switch Between Figures**:
    ```matlab
    figure(1);
    plot(1:10, tan(1:10));
    title('Figure 1: Tangent');
    ```

### Example: Combining Concepts

Here’s a more complex example demonstrating the use of multiple figures with custom properties and plots:

```matlab
% Create the first figure with default properties
figure;
x = linspace(0, 2*pi, 100);
y1 = sin(x);
plot(x, y1, 'r-', 'LineWidth', 2);
title('Sine Wave');
xlabel('x');
ylabel('sin(x)');
grid on;

% Create the second figure with custom properties
figure('Name', 'Cosine Wave', 'NumberTitle', 'off', 'Color', [0.9, 0.9, 0.9]);
y2 = cos(x);
plot(x, y2, 'b--', 'LineWidth', 2);
title('Cosine Wave');
xlabel('x');
ylabel('cos(x)');
grid on;

% Create the third figure and position it
figure('Position', [200, 200, 800, 400]);
y3 = x .* sin(x);
plot(x, y3, 'g-.', 'LineWidth', 2);
title('x * sin(x)');
xlabel('x');
ylabel('x * sin(x)');
grid on;
```

### Summary

-   **`figure` Function**: Used to create new figure windows for plotting.
-   **Basic Syntax**: `figure;` or `figure(n);` for a specific figure number.
-   **Custom Properties**: Can set properties like `'Name'`, `'NumberTitle'`, `'Color'`, and `'Position'`.
-   **Managing Multiple Figures**: Create and switch between multiple figure windows.

These capabilities allow you to organize and customize your plots effectively, providing better visualization and presentation of your data. If you need further assistance or more examples, feel free to ask!
