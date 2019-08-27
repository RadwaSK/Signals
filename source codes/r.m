function y=r(t, domain, height)
  m = height ./ domain;
  y = (height - m .* abs(t)) .* (t>=-domain) .*(t<=domain);
endfunction