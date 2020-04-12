# Plotting In MATLAB
---
`plot()` function in MATLAB helps in producing 2D plots and to get quick help on this function, we can pass the following command :
```matlab
help plot
```
Let's take the following example for plotting :

> Calculate the location of the ball thrown upwards at every 0.1 seconds until it reaches the ground when the initial velocity is 20 m/s.

***Solution :***
```matlab
% Initiate variables

u = 20;
g = 9.8;
t = 0;
y = 0;

time= 0;
location = 0;

% Run the loop
while (y >= 0)
    disp (["At Time = ",num2str(t), " Location = ", num2str(y)])
    t = t + 0.1;
    y = u * t - ( 0.5 * g * (t ^ 2) );
    
    time = [time ; t];
    location = [location ; y];
end

plot (time, location);
```

#### Formatting the Plot
We can follow the following codes to apply various formatting to our plots :
1. To plot a red dashed line :
```matlab
plot(time,location, "--r")
```
2. To plot a blue line with circular points :
```matlab
plot(time,location, "o-b")
```
3. To plot a dash-dot green line :
```matlab
plot(time,location, "-.g")
```
#### Multiple Plots
We can write the following command to produce multiple plots in the same chart :
```matlab
% Define a vector
x = [0:0.1:5];

% Ploting the curves
plot(x, sin(x), "-b", x, cos(x), "--r") 
```
Another way to plot multiple curves is :

```matlab
x = [0:0.1:5];
y = [sin(x);cos(x);sin(x)-cos(x)];

% Ploting the curves
plot(x,y)
```
Suppose, we need to add some other plot to our existing chart then, we can do it by passing the `hold on` command, as follows :

```matlab
x = [0:0.1:5];
y = [sin(x);cos(x);sin(x)-cos(x)];

% Ploting the curves
plot(x,y)
hold on
plot(x,sin(x)+ cos(x))
```
If we don't use the `hold on` command then, our plots will get overwritten by the the newly created plot.

#### log-log Plot
---
In a log-log plot the axes scales are in logarithimic scales and hence, we can't get negative numbers in these types of plots.

To get quick help on log-log plots, pass the following command :
```matlab
help loglog
```
Now, let's plot the curves in logarithimic scales :

```matlab
loglog(x,y)
```
#### Labelling the Plot :
Let's plot a simple chart before tying out the various labelling options :
```matlab
% Initialize the vector
t = [0:0.01:0.98];

% Multiple line plot

y1 = sin(2*pi*4*t);
y2 = cos(2*pi*4*t);

y = [y1;y2];

plot(t,y);
```
In order to give customized name to the axes, we need to pass the following commands :
```matlab
% Labelling the X-axis
xlabel ("Time");

% Labelling the Y-axis
ylabel ("Value");
```
To add legends to our chart :
```matlab
legend("sine function","cosine function");
```
To add the plot title :
```matlab
title("Sine-Cosine Curve");
```
To modify the X-axis and Y-axis range :
```matlab
axis ([0.5 1 -1 1]);
```

#### Saving the Plot :
To save the plot as image, we need to pass the following command :
```matlab
% To save the plot in .png format

print -dpng "MyPlot.png"
```
#### Getting Multiple Figures :
Suppose, we want multiple figures at once (without appending or, overwriting) then, we can do so by using the `figure()` command as follows :
```matlab
figure(1);
plot(t,y1,"r");
figure(2);
plot(t,y2,"g");
```
#### Plotting Multiple Figures Side-wise :
Very often we want to compare two charts and the process became easier if we have the plots side-by-side.

This can be achieved using the `subplot()` command:

`subplot()` divides the chart area into grids and then we can plot multiple plots in the same chart side-wise.

The following example shows, how we can split the chart area in 2 parts and do plotting :
```matlab
% Dividing plot area into (1x2) -- first 2 arguments
% Plotting in the 1st grid (3rd arg.)
subplot(1,2,1); 
plot(t,y1);
% Plotting in the 2nd grid (3rd arg.)
subplot(1,2,2); 
plot(t,y2);
```
>Note :
    We can perform individual labelling and formatting of the plots by providing commands under the specific `subplot()` function.
#### Clearing the plot area:
The plot area can be cleared by passing `clf` command in the prompt :
```matlab
clf;
```
#### Closing the plot window :
To close the plot window, pass the `close` command in the prompt:
```matlab
close
```
#### Visualizing Matrix
If we have a matrix of different values and we want to visualize it then, by passing the matrix into `imagesc()` produces a color-grid for the matrix with divergent colors. 
```matlab
% Create a (5x5) matrix
A = magic(5)

% Producing color-grid for the matrix
imagesc(A)
```
To see the color scale applied :
```matlab
colorbar;
```
Now, if we want a gradient of single color in the matrix then, we can pass the following command :
```matlab
colormap gray;
```
The above command will produce the matrix grid with a gradient of gray color, where, deep gray signifies the highest value present in the matrix and that of lighterone as lowest value.

To produce all the above steps in a single go,i.e., producing a grey gradient color grid for the matrix with color bar, we can pass the following command :

```matlab
% Create a (15x15) matrix
B = magic(15);

% Producing color-grid for the matrix
imagesc(B), colorbar, colormap gray;
```







