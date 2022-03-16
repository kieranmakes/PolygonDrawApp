function markerSize = getSizeOfMarker(angles, minMarkerSize)
  n = 1;
  vSize = size(angles, 1);
  markerSize = zeros(1, vSize);
  while n <= vSize
    if angles(n) > 180
      markerSize(n) = minMarkerSize * 2;
    else 
      markerSize(n) = minMarkerSize;
    end
    n = n+1;
  end
  disp(markerSize);
end
