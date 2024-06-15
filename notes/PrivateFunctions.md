In MATLAB, a private function is a function that is accessible only from within certain files, typically those in the same directory. Private functions are useful for encapsulating functionality that should not be exposed to the wider application, thus promoting modularity and reducing potential conflicts.

### Creating Private Functions

To create a private function in MATLAB, follow these steps:

1. **Create a Private Folder**: Inside your main project directory, create a folder named `private`.
2. **Place Function Files in the Private Folder**: Any function file placed in this folder will be considered private.

### Example Structure

Assume you have the following directory structure:

```
/project
  mainScript.m
  /private
    privateFunction.m
```

### Creating a Private Function

**privateFunction.m**

```matlab
function output = privateFunction(input)
    output = input^2;  % Example operation: square the input
end
```

### Accessing Private Functions

Private functions can be called only from within files that are in the parent directory of the `private` folder.

**mainScript.m**

```matlab
function mainScript()
    x = 5;
    result = privateFunction(x);  % Call to the private function
    disp(result);  % Display the result: 25
end
```

Running `mainScript` will call `privateFunction` and display the result.

### Rules for Private Functions

-   **Scope**: Private functions are accessible only to functions and scripts in the parent directory of the `private` folder.
-   **Encapsulation**: They help encapsulate functionality that should not be accessible from outside the module or component.
-   **Naming Conflicts**: Using private functions reduces the likelihood of naming conflicts because the functions are not accessible globally.

### Advantages of Using Private Functions

1. **Encapsulation**: Private functions help encapsulate internal logic that should not be exposed to the rest of the program.
2. **Modularity**: They promote a modular design by keeping the implementation details within specific components.
3. **Reduced Naming Conflicts**: Since private functions are not accessible globally, there's less chance of naming conflicts with other functions.

### Example with Multiple Private Functions

**private/privateFunction1.m**

```matlab
function output = privateFunction1(input)
    output = input + 10;  % Example operation: add 10 to the input
end
```

**private/privateFunction2.m**

```matlab
function output = privateFunction2(input)
    output = input * 2;  % Example operation: double the input
end
```

**mainScript.m**

```matlab
function mainScript()
    x = 5;
    result1 = privateFunction1(x);  % Call to the first private function
    result2 = privateFunction2(x);  % Call to the second private function
    disp(result1);  % Display the result of the first function: 15
    disp(result2);  % Display the result of the second function: 10
end
```

### Summary

-   **Private Folder**: Place the functions in a `private` folder inside your main project directory.
-   **Access**: Private functions are accessible only from scripts and functions in the parent directory.
-   **Advantages**: Encapsulation, modularity, and reduced naming conflicts.

Using private functions in MATLAB is a powerful way to manage the scope and accessibility of your code, promoting cleaner and more maintainable codebases.
