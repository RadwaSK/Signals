#period
T = 6;
#fundamental freq.
w0 = 2 .* pi ./ T;
yMagn = [];
yPhase = [];
f = [];

#coeff.
for k=-85:85
  f = [f k];
  x = (1 ./ T) .* quadgk(@(t) (1-2 .* abs(t)) .* exp(-i .* k .* w0 .* t), -0.5, 0.5);
  yMagn = [yMagn abs(x)];
  yPhase = [yPhase angle(x)];
endfor

#Real Part
subplot(2,1,1), stem(f, yMagn);
xlabel("k"); ylabel("ak magnitude");
title("Magnitudes of ak");

#Imaginary Part
subplot(2,1,2), stem(f, yPhase);
xlabel("k"); ylabel("ak phase");
title("Phases of ak in radians");