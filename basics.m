clc,
clearvars

A=randi(5,1,10)

num3=sum(A==3);

if num3>=3
    disp('wow!')
else
    disp('fuck!')
end

%%

clc,
clear

% Create a 3D array (5x5x5) with random values
data = rand(5, 5, 5);

%%
% Define the coordinates for the slices
[x, y, z] = meshgrid(1:5, 1:5, 1:5);

% Create a figure
figure;

% Plot slices at specified locations along x, y, and z axes
slice(x, y, z, data, [2 4], [2 4], [2 4]);

% Set the view angle
view(3);

% Add labels
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('3D Slice Plot');

%%
% Define the coordinates
[x, y, z] = meshgrid(1:5, 1:5, 1:5);

% Create a figure
figure;

% Extract the isosurface at a specified value (e.g., 0.5)
isosurfaceValue = 0.5;
isosurfacePatch = isosurface(x, y, z, data, isosurfaceValue);

% Create a patch for visualization
p = patch(isosurfacePatch);

% Set patch properties
isonormals(x, y, z, data, p);
p.FaceColor = 'red';
p.EdgeColor = 'none';

% Add lighting and adjust view
lighting gouraud;
camlight;

% Set the view angle
view(3);

% Add labels
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('3D Isosurface Plot');

%%
% Create a figure
figure;

% Define the coordinates
[x, y, z] = meshgrid(1:5, 1:5, 1:5);

% Create contour plots for slices along the z-axis
for k = 1:size(data, 3)
    contour3(x(:,:,k), y(:,:,k), data(:,:,k), 10); % 10 contour levels
    hold on;
end

% Set the view angle
view(3);

% Add labels
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('3D Contour Plot');

%%
clc, clear

% Define the range of x and y
x = 0:0.1:10;
y = 0:0.1:10;

% Create 2D grids for x and y
[X, Y] = meshgrid(x, y);

% Evaluate a function, e.g., Z = sin(X) + cos(Y)
Z = sin(X) + cos(Y);

% Create a surface plot
figure;
surf(X, Y, Z);

% Add labels
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Surface Plot of sin(X) + cos(Y)');
