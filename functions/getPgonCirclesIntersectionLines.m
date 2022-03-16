function pgonCirclesIntersectionLines = getpgonCirclesIntersectionLines(pgonVertices, circle1Intersections, circle2Intersections, circleRadius)
  
  % - Get the intersectionPoints product from both circle1 and circle2
  % - Remove intersectionPoints that have an intersection point between them on the same connecting polygon line 
  % - Compare polygon line equations with the intersectionPairs line equations
  %   - Return list of all intersectionPairs that have the same line equation as a connecting line
  %     between 2 polygon verticies
  
  pv_size = size(pgonVertices,1);
  c1i_size = size(circle1Intersections,1);
  c2i_size = size(circle2Intersections,1);
  c1i = zeros(c1i_size,2);
  c2i = zeros(c2i_size,2);
  allIntersectionPairs_size = c1i_size * c2i_size;
  allIntersectionPairs = [];
  intersectionPairsOnPoly = [];

  % get every combination of intersection points from both circles
  z = 1;
  d = c2i_size - 1; 
  for i=1:c1i_size
    cur_c1i = circle1Intersections(i,:);
    for j=1:c2i_size
      allIntersectionPairs = [allIntersectionPairs; horzcat(cur_c1i, circle2Intersections(j,:))];
    end
  end
  disp(allIntersectionPairs);
  disp(size(allIntersectionPairs,1)); 

  % get line coefficents for all intersectionPairs and all polygon edges
  intersectionPairsLineCoefficients = round(getLineCoefficients(allIntersectionPairs),3)
  pgonLineCoefficients = round(getLineCoefficients(pgonVertices),3)

  % find the indexs of intersectionPairs that have the same line coefficents as one of the polygons edges 
    % go through all pgonLineCoefficients  -> curPgonLineCoefficients
      % find all indexs for each of the curPgonLineCoefficients in the intersectionPairsLineCoefficients
  matchingLineCoefficientIndexes = [];
  for i=1:size(pgonLineCoefficients,1)
    curPgonLineCoefficients = pgonLineCoefficients(i,:);
    x = find(ismember(intersectionPairsLineCoefficients, curPgonLineCoefficients))
    x = x';
    if ~isempty(x)
      matchingLineCoefficientIndexes = [matchingLineCoefficientIndexes, x];
    end
  end
  matchingLineCoefficientIndexes

  pgonCirclesIntersectionLines = [];
  for i=1:size(matchingLineCoefficientIndexes,2)
    if matchingLineCoefficientIndexes(i) <= allIntersectionPairs_size
      pgonCirclesIntersectionLines = [pgonCirclesIntersectionLines; allIntersectionPairs(matchingLineCoefficientIndexes(i),:)];
    end
  end

  % remove any circle intersection pairs that have an intersection coordinate between the 
  % intersection pair (on the same connecting line)

  pgonCirclesIntersectionLines

  smallLines = []
  % delete the ones that are more than the difference in radius of the two circles
  for i=1:size(pgonCirclesIntersectionLines,1)
    dist = round(norm(pgonCirclesIntersectionLines(i,1:2) - pgonCirclesIntersectionLines(i,3:4)),2)
    if dist <= circleRadius
      smallLines = [smallLines; pgonCirclesIntersectionLines(i,:)];
    end
  end
  smallLines;
  pgonCirclesIntersectionLines = smallLines;
end
