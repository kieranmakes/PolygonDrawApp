function [c1_xi, c1_yi, c2_xi, c2_yi] = getCircleIntersectionPoints(pgon, circle1, circle2, x0, y0, c1_r, c2_r)
  %[c1_xi, c1_yi, c2_xi, c2_yi] = getCircleIntersectionPoints(pgon, circle1, circle2, x0, y0, c1_r, c2_r);
  % find intersections of polygon and circles
  [c1_xi, c1_yi] = polyxpoly(pgon.Vertices(:,1), pgon.Vertices(:,2), circle1.Vertices(:,1), circle1.Vertices(:,2))
  [c2_xi, c2_yi] = polyxpoly(pgon.Vertices(:,1), pgon.Vertices(:,2), circle2.Vertices(:,1), circle2.Vertices(:,2))

  p1 = pgon.Vertices(1,:)
  p2 = pgon.Vertices(size(pgon.Vertices,1), :)
  [x1i, y1i] = polyxpoly([p1(1,1) p2(1,1)], [p1(1,2), p2(1, 2)], circle1.Vertices(:,1), circle1.Vertices(:,2))


  l1Coefficients = getLineCoefficients([pgon.Vertices(1,:); pgon.Vertices(size(pgon.Vertices,1),:)]);
  l1Coefficients = l1Coefficients(1,:)
  [c1x1, c1y1] = linecirc(l1Coefficients(1,1), l1Coefficients(1,2), x0, y0, c1_r)
  [c2x1, c2y1] = linecirc(l1Coefficients(1,1), l1Coefficients(1,2), x0, y0, c2_r)

  c1x1_all_intersections_on_pgon = [];
  c1y1_all_intersections_on_pgon = [];
  c2x1_all_intersections_on_pgon = [];
  c2y1_all_intersections_on_pgon = [];
  if ~isnan(c1x1(1,1))
    for i=1:length(c1x1)
      [in, on] = inpolygon(c1x1(1,i) , c1y1(1,i), pgon.Vertices(:,1), pgon.Vertices(:,2));
      i
      c1x1(1,i)
      c1y1(1,i)
      on
      if on
        c1x1_all_intersections_on_pgon = [c1x1_all_intersections_on_pgon; c1x1(1,i)]; 
        c1y1_all_intersections_on_pgon = [c1y1_all_intersections_on_pgon; c1y1(1,i)]; 
      end
    end
  end

  if ~isnan(c2x1(1,1))
    for i=1:length(c2x1)
      [in, on] = inpolygon(c2x1(1,i), c2y1(1,i), pgon.Vertices(:,1), pgon.Vertices(:,2));
      i
      c2x1(1,i)
      c2y1(1,i)
      on
      if on
        c2x1_all_intersections_on_pgon = [c2x1_all_intersections_on_pgon; c2x1(1,i)]; 
        c2y1_all_intersections_on_pgon = [c2y1_all_intersections_on_pgon; c2y1(1,i)]; 
      end
    end
  end
  c1x1_all_intersections_on_pgon
  c1y1_all_intersections_on_pgon
  c2x1_all_intersections_on_pgon
  c2y1_all_intersections_on_pgon

  c1_xi = [c1x1_all_intersections_on_pgon; c1_xi];
  c1_yi = [c1y1_all_intersections_on_pgon; c1_yi];
  c2_xi = [c2x1_all_intersections_on_pgon; c2_xi];
  c2_yi = [c2y1_all_intersections_on_pgon; c2_yi];
end
