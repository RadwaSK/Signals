#Part A
limit = 5;
t = -limit:0.1:limit;
ft = rect(t);
#Drawing the rectangle (without the vertical lines)
subplot(3,3,1), plot(t, ft);
xlabel("t"); ylabel("rect(t)");
title("Rectangle");

ft = triangl(t);
#Drawing the triangle
subplot(3,3,2), plot(t, ft);
xlabel("t"); ylabel("triangl(t)");
title("Triangle");

ft = ustep(t);
#Drawing the ustep function, starting from -5 to 5
subplot(3,3,3), plot(t, ft);
xlabel("t"); ylabel("ustep(t)");
title("U step");

ft = r(t, 3, 2);
#Drawing the triangle with base [-3,3] & height = 2
subplot(3,3,4), plot(t,ft);
xlabel("t"); ylabel("r(t)");
title("r(t)");

t = -4:0.1:3;
ft =  exp(-3.*t) .* sin(8.*pi.*t./5) .* ustep(t+2);
#Drawing the function 
subplot(3,3,5), plot(t, ft);
xlabel("t"); ylabel("f(t)");
title("f(t)");