function [rotated_xs, rotated_ys] = rotateCoordinates(xs, ys, centerx, centery, angle)
  angle = deg2rad(angle);
  v = [xs;ys];
  center = repmat([centerx; centery], 1, length(xs));
  R = [cos(angle) sin(angle); -sin(angle) cos(angle)];
  s = v - center; % points shifted so that the center of rotaition is at the orign
  so = R*s; % rotation done about point of origin
  vo = so + center; % points shifted so that the origin point goes back to intended center
  rotated_xs = vo(1,:);
  rotated_ys = vo(2,:);
end
  
