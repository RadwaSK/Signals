#partB
t = -5:0.1:5;

subplot(2,2,1), plot(t,Yt(t));
xlabel("t"); ylabel("Y(t)"); title("Y(t)");
subplot(2,2,2), plot(t,Yt(3 .* t));
xlabel("t"); ylabel("Y(3t)"); title("Y(3t)");
subplot(2,2,3), plot(t,Yt(t+2));
xlabel("t"); ylabel("Y(t+2)"); title("Y(t+2)");
subplot(2,2,4), plot(t,Yt(4 .* t-2));
xlabel("t"); ylabel("Y(4t-2)"); title("Y(4t-2)");