In MATLAB, the `xlim` and `ylim` functions are used to set or query the limits of the x-axis and y-axis, respectively, in a plot. These functions allow you to control the range of values displayed on the axes, which can be useful for focusing on a specific region of your data.

### `xlim` Function

The `xlim` function sets or queries the limits of the x-axis.

#### Syntax

1. **Query Current Limits**:

    ```matlab
    x_limits = xlim;
    ```

2. **Set New Limits**:

    ```matlab
    xlim([xmin xmax]);
    ```

3. **Set Mode to 'auto' or 'manual'**:
    ```matlab
    xlim('auto');
    xlim('manual');
    ```

#### Examples

1. **Querying the Current Limits**:

    ```matlab
    plot(1:10, (1:10).^2);
    current_xlim = xlim;
    disp(current_xlim); % Displays the current x-axis limits
    ```

2. **Setting New Limits**:

    ```matlab
    plot(1:10, (1:10).^2);
    xlim([0 15]); % Sets the x-axis limits from 0 to 15
    ```

3. **Setting Mode to 'auto'**:
    ```matlab
    plot(1:10, (1:10).^2);
    xlim('auto'); % MATLAB automatically adjusts the x-axis limits
    ```

### `ylim` Function

The `ylim` function sets or queries the limits of the y-axis.

#### Syntax

1. **Query Current Limits**:

    ```matlab
    y_limits = ylim;
    ```

2. **Set New Limits**:

    ```matlab
    ylim([ymin ymax]);
    ```

3. **Set Mode to 'auto' or 'manual'**:
    ```matlab
    ylim('auto');
    ylim('manual');
    ```

#### Examples

1. **Querying the Current Limits**:

    ```matlab
    plot(1:10, (1:10).^2);
    current_ylim = ylim;
    disp(current_ylim); % Displays the current y-axis limits
    ```

2. **Setting New Limits**:

    ```matlab
    plot(1:10, (1:10).^2);
    ylim([0 120]); % Sets the y-axis limits from 0 to 120
    ```

3. **Setting Mode to 'auto'**:
    ```matlab
    plot(1:10, (1:10).^2);
    ylim('auto'); % MATLAB automatically adjusts the y-axis limits
    ```

### Combining `xlim` and `ylim`

You can use both `xlim` and `ylim` to control the x-axis and y-axis limits of a plot simultaneously.

#### Example

```matlab
% Create a plot
x = linspace(0, 2*pi, 100);
y = sin(x);
plot(x, y);

% Set x-axis and y-axis limits
xlim([0 2*pi]);
ylim([-1.5 1.5]);

% Add titles and labels
title('Sine Wave');
xlabel('x');
ylabel('sin(x)');
```

### Dynamic Adjustment Based on Data

If you want to dynamically adjust the limits based on your data, you can calculate the desired limits and then apply `xlim` and `ylim`.

#### Example

```matlab
% Generate some data
x = linspace(-2*pi, 2*pi, 200);
y = cos(x);

% Plot the data
plot(x, y);

% Calculate and set limits with a margin
x_margin = 0.1 * (max(x) - min(x));
y_margin = 0.1 * (max(y) - min(y));
xlim([min(x) - x_margin, max(x) + x_margin]);
ylim([min(y) - y_margin, max(y) + y_margin]);

% Add titles and labels
title('Cosine Wave');
xlabel('x');
ylabel('cos(x)');
```

### Summary

-   **`xlim` Function**: Sets or queries the x-axis limits.

    -   `xlim([xmin xmax])`: Sets the x-axis limits.
    -   `xlim('auto')`: Automatically adjusts the x-axis limits.
    -   `xlim('manual')`: Sets the x-axis limits manually.

-   **`ylim` Function**: Sets or queries the y-axis limits.

    -   `ylim([ymin ymax])`: Sets the y-axis limits.
    -   `ylim('auto')`: Automatically adjusts the y-axis limits.
    -   `ylim('manual')`: Sets the y-axis limits manually.

-   **Combining `xlim` and `ylim`**: Control both x-axis and y-axis limits for more precise plotting.

Using `xlim` and `ylim` helps you to effectively control the display range of your plots, making it easier to focus on specific parts of your data. If you have further questions or need more examples, feel free to ask!
