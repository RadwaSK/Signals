t = -10:0.01:10;

mt = sin(5 * pi .* t) ./ (pi .* t);
subplot(2,2,1), plot(t,mt);
xlabel("t"); ylabel("m(t)");
title("m(t)");

Mt = fft(mt);
Mt_shifted = fftshift(Mt); 
n = length(mt);
f = (-n/2:n/2-1)*(50/n);
subplot(2,2,2), plot(f, abs(Mt_shifted));
xlabel("f"); ylabel("M(jw)");
title("M(jw)");

rt = mt .* cos(30 * pi .* t);
subplot(2,2,3), plot(t,rt);
xlabel("t"); ylabel("r(t)");
title("r(t)");

Rt = fft(rt);
Rt_shifted = fftshift(Rt);
n = length(rt);
f = (-n/2:n/2-1)*(50/n);
subplot(2,2,4), plot(f, abs(Rt_shifted));
xlabel("f"); ylabel("R(jw)");
title("R(jw)");