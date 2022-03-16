function angleColors = getJetColorFromAngle(angles)
  angles = round(angles);
  colors = jet(360);
  angleColors = zeros(size(angles, 1),3);
  n = 1;
  while n <= size(angles, 1)
    angleColors(n,:) = colors(angles(n),:);
    n = n + 1;
  end
  disp(angleColors)
end
