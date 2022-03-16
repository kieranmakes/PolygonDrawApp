function [pgon, markers] = drawPolygon(app, coordinates)
  if ispolycw(coordinates(:,1), coordinates(:,2))
    [xs, ys] = poly2ccw(coordinates(:,1), coordinates(:,2));
    coordinates = [xs, ys]
  end

  hold(app.UIAxes, 'off');
  ax = app.UIAxes;
  pgon = polyshape(coordinates);
  p = plot(ax, pgon, 'FaceAlpha', 0, 'LineWidth', 2);
  hold(app.UIAxes, 'on');

  %set colour bar axis min and max, set color to jet and display colorbar
  caxis(ax, [0 360]);
  colormap(ax, jet);
  colorbar(ax);

  angles = getSubtendedAngles(coordinates);
  angleColors = getJetColorFromAngle(angles);
  markerSizes = getSizeOfMarker(angles, 75);
  markers = scatter(ax, coordinates(:,1), coordinates(:,2), markerSizes, angleColors, 'filled');
  coordinates


  [xMin, xMax, yMin, yMax] = getXYMinMax(coordinates)
  rect = polyshape([xMin xMin xMax xMax], [yMin yMax yMax yMin]);
  plot(ax, rect, 'FaceAlpha', 0, 'EdgeColor', 'b');

  % plot circles
  center = [((xMin + xMax)/2), ((yMin + yMax)/2)];

  r= 0.02 * xMax;
  x0=center(1);
  y0=center(2);
  theta = linspace(0,2*pi,100);
  plot(ax, x0 + r*cos(theta),y0 + r*sin(theta),'-');
  axis equal;

  t=linspace(0,360, 720).'; t(end)=[]; %circle angular samples

  c1_r = (xMax-xMin)/2;
  circle1 = polyshape([cosd(t), sind(t)]*c1_r+[x0,y0]);
  c1 = plot(ax, circle1, 'FaceAlpha', 0, 'EdgeColor', 'c');
  axis equal;

  c2_r = (yMax-yMin)/2;
  circle2 = polyshape([cosd(t), sind(t)]*c2_r+[x0,y0]);
  c2 = plot(ax, circle2, 'FaceAlpha', 0, 'EdgeColor', 'g');

  % get intersection points
  [c1_xi, c1_yi, c2_xi, c2_yi] = getCircleIntersectionPoints(pgon, circle1, circle2, x0, y0, c1_r, c2_r)

  % plot of intersections 
  c1_intersections = scatter(ax, c1_xi, c1_yi, 280, 'k');
  c1_intersections.Marker = '*';
  c2_intersections = scatter(ax, c2_xi, c2_yi, 280, 'k');
  c2_intersections.Marker = '*';

  % plot lines that intersect circles
  pgonCircleIntersectionLines = getPgonCirclesIntersectionLines(...
    pgon.Vertices,...
    [c1_xi c1_yi],...
    [c2_xi c2_yi],...
    max([c1_r, c2_r]));
  for i=1:size(pgonCircleIntersectionLines, 1)
    curLine = pgonCircleIntersectionLines(i,:);
    x1 = curLine(1,1);
    y1 = curLine(1,2);
    x2 = curLine(1,3);
    y2 = curLine(1,4);
    plot(ax, [x1 x2], [y1 y2], 'color', 'magenta');
  end 
  % plot magenta * on the intersection points
  intersectionsMagenta = scatter(ax, pgonCircleIntersectionLines(:,1), pgonCircleIntersectionLines(:,2), 25, 'magenta');
  intersectionsMagenta.Marker = '*';
  intersectionsMagenta = scatter(ax, pgonCircleIntersectionLines(:,3), pgonCircleIntersectionLines(:,4), 25, 'magenta');
  intersectionsMagenta.Marker = '*';

  % plot rotated interection lines
  rotatedIntersectionLines = getIntersectionRotatedLines(pgonCircleIntersectionLines, [x0 y0])
  for i=1:length(rotatedIntersectionLines)
    curLine = rotatedIntersectionLines(i,:);
    x1 = curLine(1,1);
    y1 = curLine(1,2);
    x2 = curLine(1,3);
    y2 = curLine(1,4);
    plot(ax, [x1 x2], [y1 y2], 'color', 'magenta');
  end
  % plot magenta * on the rotated intersection points
  intersectionsMagenta = scatter(ax, rotatedIntersectionLines(:,1), rotatedIntersectionLines(:,2), 25, 'magenta');
  intersectionsMagenta.Marker = '*';
  intersectionsMagenta = scatter(ax, rotatedIntersectionLines(:,3), rotatedIntersectionLines(:,4), 25, 'magenta');
  intersectionsMagenta.Marker = '*';
  markers
  pgon
  ispolycw(pgon.Vertices(:,1), pgon.Vertices(:,2))
end
