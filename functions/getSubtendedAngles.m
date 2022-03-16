
% get angles between each connecting vector line
function subtendedAngles = getSubtendedAngles(coordinates)
  numOfCoordinatePairs = size(coordinates, 1);
  angles = zeros(numOfCoordinatePairs, 3);
  n = 1;
  % go through every coordinate pair and compare
  % the line x1, y1 to x2, y2 with the line x1, y1 to x3, y3
  while n <= numOfCoordinatePairs
    x1 = coordinates(n,1);
    y1 = coordinates(n,2);
    v1 = [];
    v2 = [];

    try 
      x2 = coordinates(n+1,1);
      y2 = coordinates(n+1,2);
      v1 = [x2, y2, 0] - [x1, y1, 0];
    catch e
      % handle case for the last coordinate
      % make the last coordinate the first coordinate
      x2 = coordinates(1,1);
      y2 = coordinates(1,2);
      v1 = [x2, y2, 0] - [x1, y1, 0];
    end

    try
      x3 = coordinates(n-1, 1);
      y3 = coordinates(n-1, 2);
      v2 = [x3, y3, 0] - [x1, y1, 0];
    catch e
      x3 = coordinates(numOfCoordinatePairs, 1);
      y3 = coordinates(numOfCoordinatePairs, 2);
      v2 = [x3, y3, 0] - [x1, y1, 0];
    end
    angles(n,:) = rad2deg(atan2(cross(v1, v2), dot(v1, v2)));
    n = n+1;
  end
  angles = angles(:,3);
  n = 1;
  while n <= numOfCoordinatePairs
    if (angles(n) < 0) 
      angles(n) = 360 + angles(n);
    end
    n = n+1;
  end
  disp(angles);
  subtendedAngles = angles;
end
