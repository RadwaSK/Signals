t = -15:0.1:15;
T = 6;

Zt = @(x) exp(-1 .* abs(x) ./ 3) .* sin(4 .* pi .* x) .* (ustep(x) - ustep(x-5));

ZtPeriodic = 0;
for i = -3:3
  ZtPeriodic = ZtPeriodic + Zt(t + i .* T);
endfor

plot(t, ZtPeriodic);
xlabel("t"); ylabel("Z(t)");
title("Z(t)");

energy = integral(@(t)Zt(t).^ 2, 0, 6)

power = energy ./ 6