function [newSelectedMarkerIndex, newSelectedMarkerOrigColour] = updateClosestMarkerToCursor (...
    pgonCoordinates,...
    cursorCoordinates,...
    markers,... 
    oldSelectedMarkerIndex,... 
    oldSelectedMarkerOrigColor...
    )
  disp(markers);
  disp(cursorCoordinates)
  oldSelectedMarkerIndex
  oldSelectedMarkerOrigColor
  try
    xs = markers.XData;
    ys = markers.YData;
    p = polyshape(xs, ys);
    [vertixid, boundaryid, ind] = nearestvertex(p, cursorCoordinates(1,1), cursorCoordinates(1,2));
    % get the correct index by rotating the pgonVerticies indexs 
    inds = [1:size(xs, 2)]; inds(2:size(xs,2)) = fliplr(inds(2:size(xs,2)));
    ind = inds(ind);
    % change past marker's colour back to original colour
    if oldSelectedMarkerIndex & ~isempty(oldSelectedMarkerOrigColor)
      markers.CData(oldSelectedMarkerIndex,:) = oldSelectedMarkerOrigColor;
    end
    % get new selected marker index & orig colour to return and update the new selected marker to be red
    newSelectedMarkerIndex = ind;
    newSelectedMarkerOrigColour = markers.CData(ind,:);
    markers.CData(ind,:) = [1 0 0];
 catch e
   disp('no markers yet')
   newSelectedMarkerOrigColour = [];
   newSelectedMarkerIndex = 0;
end
