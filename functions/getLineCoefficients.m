% get the line coefficients 
function lineCoefficients = getLineCoefficients(coordinates)

  numOfCoordinatePairs = size(coordinates, 1);
  lineCoefficients = zeros(numOfCoordinatePairs, 2);

  if size(coordinates,2) == 4
    for n=1:numOfCoordinatePairs;
      x1 = coordinates(n,1);
      y1 = coordinates(n,2);
      x2 = coordinates(n,3);
      y2 = coordinates(n,4);
      lineCoefficients(n,:) = polyfit([x1 x2], [y1 y2], 1);
    end
  end
  
  if size(coordinates,2) == 2
    n = 1;
    while n <= numOfCoordinatePairs;
      x1 = coordinates(n,1);
      y1 = coordinates(n,2);
      try 
        x2 = coordinates(n+1,1);
        y2 = coordinates(n+1,2);
        lineCoefficients(n,:) = polyfit([x1 x2], [y1 y2], 1);
      catch e
        % handle case for the last coordinate
        % make the last coordinate the first coordinate
        x2 = coordinates(1,1);
        y2 = coordinates(1,2);
        lineCoefficients(n,:) = polyfit([x1 x2], [y1 y2], 1);
      end
      n = n+1; 
    end
  end
end
