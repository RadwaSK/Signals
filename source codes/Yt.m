function  y=Yt(t)
  y = exp(-1 .* abs(t) ./ 5) .* (ustep(t+1) - ustep(t-3));
endfunction