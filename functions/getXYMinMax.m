function [xMin, xMax, yMin, yMax] = getXYMinMax(coordinates)
  xs = coordinates(:,1);
  ys = coordinates(:,2);
  xMin = min(xs)
  xMax = max(xs)
  yMin = min(ys)
  yMax = max(ys)
end

