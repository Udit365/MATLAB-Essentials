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
#### Labelling Axes :
In order to give customized name to the axes, we need to pass the following commands :
```matlab
% Labelling the X-axis
xlabel ("time (s)");

% Labelling the Y-axis
ylabel ("location (m)");xlable()
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











